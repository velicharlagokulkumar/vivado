/*

Custom pattern generator core


Description:  This component is programmed via a host or master through the pattern slave port to program the internal test memory.  When the host
              writes to the start bit of the CSR slave port the component will begin to send the contents from the internal memory to the data streaming
              port.  You should use the custom pattern checker component with this component.

Register map:

|-------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Address   |   Access Type   |                                                            Bits                                                        |
|            |                 |------------------------------------------------------------------------------------------------------------------------|
|            |                 |            31..24            |            23..16            |            15..8            |            7..0            |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|
|     0      |       r/w       |                                                       Payload Length                                                   |
|     4      |       r/w       |                        Pattern Position                                             Pattern Length                     |
|     8      |       r/w       |                           Run                                                                  Infinite Payload Length |
|     12     |       N/A       |                                                            N/A                                                         |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|


Address 0  --> Bits 31:0 are used store the payload length as well as read it back while the checker core is operating.  This field should only be written to while
               the checker is stopped.
Address 4  --> Bits 15:0 is used to store pattern length, bits 31:16 used to store a new position in the pattern.  The position will update as the checker is operating.
               These fields should only be written to while the checker core is stopped.
Address 8  --> Bit 0 is used tell the checker to ignore the payload length field and generate the pattern until stopped.  The run field must be accessed at the same time
               as the other bit or later.
Address 12 --> <reserved>


*/

`timescale 1ns / 1ps

module mtm_custom_pattern_generator (
  clk,
  reset,

  csr_address,
  csr_writedata,
  csr_write,
  csr_readdata,
  csr_read,
  csr_byteenable,

  pattern_address,
  pattern_writedata,
  pattern_write,
  pattern_byteenable,

  src_data,
  src_valid,
  src_ready
);


  parameter DATA_WIDTH = 32;          // must be an even multiple of 8 and is used to determine the width of the 2nd port of the on-chip RAM
  parameter MAX_PATTERN_LENGTH = 64;  // used to determine the depth of the on-chip RAM and modulo counter width, set to a multiple of 2
  parameter ADDRESS_WIDTH = 6;

  localparam NUM_OF_SYMBOLS = DATA_WIDTH / 8;

  input clk;
  input reset;

  input [1:0] csr_address;
  input [31:0] csr_writedata;
  input csr_write;
  output wire [31:0] csr_readdata;
  input csr_read;
  input [3:0] csr_byteenable;

  input [ADDRESS_WIDTH-1:0] pattern_address;
  input [DATA_WIDTH-1:0] pattern_writedata;
  input pattern_write;
  input [(DATA_WIDTH/8)-1:0] pattern_byteenable;

  output wire [DATA_WIDTH-1:0] src_data;
  output wire src_valid;
  input src_ready;

  // interal registers and wires
  reg [31:0] payload_length_counter;
  wire load_payload_length_counter;
  wire [3:0] load_payload_length_counter_lanes;
  reg [15:0] pattern_length;
  wire load_pattern_length;
  wire [1:0] load_pattern_length_lanes;
  reg [15:0] pattern_position_counter;
  wire load_pattern_position_counter;
  wire [1:0] load_pattern_position_counter_lanes;
  reg infinite_payload_length;
  wire load_infinite_payload_length;
  reg start;
  wire load_start;
  wire clear_start;


  reg [ADDRESS_WIDTH-1:0] pattern_length_minus_one;
  wire increment_pattern_position_counter;
  wire decrement_payload_length_counter;
  wire [ADDRESS_WIDTH-1:0] internal_memory_address;
  wire read_memory;
  reg read_memory_d1;
  reg read_memory_d2;
  reg read_memory_d3;
  wire [DATA_WIDTH-1:0] memory_data;
  reg [DATA_WIDTH-1:0] memory_data_d1;
  reg [31:0] readback_mux;
  reg [31:0] readback_mux_d1;



  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      start <= 0;
      pattern_length_minus_one <= 0;
    end
    else
    begin
      if (clear_start == 1)
      begin
        start <= 0;
      end
      else if (load_start == 1)
      begin
        start <= csr_writedata[24];
        pattern_length_minus_one <= (pattern_length - 1'b1);
      end
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      payload_length_counter <= 0;
    end
    else 
    begin
      if (load_payload_length_counter == 1)
      begin
        if (load_payload_length_counter_lanes[0] == 1)
        begin
          payload_length_counter[7:0] <= csr_writedata[7:0];
        end
        if (load_payload_length_counter_lanes[1] == 1)
        begin
          payload_length_counter[15:8] <= csr_writedata[15:8];
        end
        if (load_payload_length_counter_lanes[2] == 1)
        begin
          payload_length_counter[23:16] <= csr_writedata[23:16];
        end
        if (load_payload_length_counter_lanes[3] == 1)
        begin
          payload_length_counter[31:24] <= csr_writedata[31:24];
        end
      end
      else if (decrement_payload_length_counter == 1)
      begin
        payload_length_counter <= payload_length_counter - NUM_OF_SYMBOLS;
      end
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      pattern_length <= 0;
    end
    else
    begin
      if (load_pattern_length == 1)
      begin
        if (load_pattern_length_lanes[0] == 1)
        begin
          pattern_length[7:0] <= csr_writedata[7:0];
        end
        if (load_pattern_length_lanes[1] == 1)
        begin
          pattern_length[15:8] <= csr_writedata[15:8];
        end
      end
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      pattern_position_counter <= 0;
    end
    else
    begin
      if (load_pattern_position_counter == 1)
      begin
        if (load_pattern_position_counter_lanes[0] == 1)
        begin
          pattern_position_counter[7:0] <= csr_writedata[23:16];
        end
        if (load_pattern_position_counter_lanes[1] == 1)
        begin
          pattern_position_counter[15:8] <= csr_writedata[31:24];
        end
      end
      else if (increment_pattern_position_counter == 1)
      begin
        pattern_position_counter[ADDRESS_WIDTH-1:0] <= (pattern_position_counter[ADDRESS_WIDTH-1:0] == pattern_length_minus_one)? 0 : (pattern_position_counter[ADDRESS_WIDTH-1:0] + 1'b1);
      end
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      infinite_payload_length <= 0;
    end
    else if (load_infinite_payload_length == 1)
    begin
      infinite_payload_length <= csr_writedata[0];
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      readback_mux_d1 <= 0;
    end
    else if (csr_read == 1)
    begin
      readback_mux_d1 <= readback_mux;
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      read_memory_d1 <= 0;
      read_memory_d2 <= 0;
      read_memory_d3 <= 0;
    end
    else
    begin
      read_memory_d1 <= read_memory;
      read_memory_d2 <= read_memory_d1;
      read_memory_d3 <= read_memory_d2;
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      memory_data_d1 <= 0;
    end
    else if (read_memory_d2 == 1)
    begin
      memory_data_d1 <= memory_data;
    end
  end

blk_mem_gen_0 bram (
  .clka(clk),    // input wire clka
  .ena(pattern_write),      // input wire ena
  .wea(pattern_byteenable),      // input wire [3 : 0] wea
  .addra(pattern_address),  // input wire [6 : 0] addra
  .dina(pattern_writedata),    // input wire [31 : 0] dina
  .clkb(clk),    // input wire clkb
  .addrb(internal_memory_address),  // input wire [6 : 0] addrb
  .doutb(memory_data)  // output wire [31 : 0] doutb
);
  // Port A used to access pattern from slave port, Port B used to send data out the source port


  always @ (csr_address or payload_length_counter or pattern_length or pattern_position_counter or infinite_payload_length or start)
  begin
    case (csr_address)
      2'b00: readback_mux = payload_length_counter;
      2'b01: readback_mux = {pattern_position_counter, pattern_length};
      2'b10: readback_mux = {{7{1'b0}}, start, {15{1'b0}}, {8{1'b0}}, infinite_payload_length};
      2'b11: readback_mux = {32{1'b0}};
    endcase
  end


genvar i;
generate
  for (i = 0; i < NUM_OF_SYMBOLS; i = i + 1)
  begin : byte_reversal
    assign src_data[((8*(i+1))-1):(8*i)] = memory_data_d1[((8*((NUM_OF_SYMBOLS-1-i)+1))-1):(8*(NUM_OF_SYMBOLS-1-i))];
  end
endgenerate





  assign load_payload_length_counter = (csr_address == 0) & (csr_write == 1);
  assign load_payload_length_counter_lanes = csr_byteenable;
  assign load_pattern_length = (csr_address == 1) & (csr_write == 1) & (csr_byteenable[1:0] != 0);
  assign load_pattern_length_lanes = csr_byteenable[1:0];
  assign load_pattern_position_counter = (csr_address == 1) & (csr_write == 1) & (csr_byteenable[3:2] != 0);
  assign load_pattern_position_counter_lanes = csr_byteenable[3:2];
  assign load_infinite_payload_length = (csr_address == 2) & (csr_write == 1) & (csr_byteenable[0] == 1);
  assign load_start = (csr_address == 2) & (csr_write == 1) & (csr_byteenable[3] == 1);

  assign increment_pattern_position_counter = (start == 1) & (src_ready == 1) & (clear_start == 0);
  assign decrement_payload_length_counter = (start == 1) & (src_ready == 1) & (infinite_payload_length == 0);
  assign clear_start = (start == 1) & (infinite_payload_length == 0) & (payload_length_counter == 0);
  assign internal_memory_address = pattern_position_counter[ADDRESS_WIDTH-1:0];
  assign read_memory = (start == 1) & (src_ready == 1) & ((infinite_payload_length == 1) | ((infinite_payload_length == 0) & (payload_length_counter != 0)));
  assign src_valid = (read_memory_d3 == 1);

  assign csr_readdata = readback_mux_d1;


endmodule
