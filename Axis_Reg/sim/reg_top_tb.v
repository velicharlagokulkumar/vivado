`timescale 1ns / 1ps

module reg_top_tb(
    );
    
	parameter DATA_WIDTH = 8;

	// Ports
        reg                       clock = 0;
        reg                       reset = 1; 
        
        reg  [DATA_WIDTH-1:0]     s_axis_tdata;
        reg                       s_axis_tvalid=0;
        wire                      s_axis_tready;
        reg                       s_axis_tlast=0;
        
        
        wire [DATA_WIDTH-1:0]    m_axis_tdata;
        wire                     m_axis_tvalid;
        reg                      m_axis_tready=0;
        wire                     m_axis_tlast;
  
register_st #(
        .DATA_WIDTH(DATA_WIDTH)
   ) inst_Reg(      
        .clk(clock),
        .reset(reset),
        
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

         integer count = 0;
         integer wait_n = 0;

  initial 
    begin
         reset_task();
         slave_valid_master_ready(2);
         slave_valid_master_not_ready(3);
         slave_not_valid_master_ready(4);
         slave_not_valid_master_ready(5);
         slave_not_valid_master_ready(6);
         slave_valid_master_ready(7);
         fork
             axi_write(4);  //parameter: packet length no. bytes
             axi_read(7);  //parameter : apply back pressure for no. of clock cycles
         join
     end

  
//clock generation
always	#5 clock = ! clock ;

//reset task		
task reset_task;
	begin
		repeat (1) @(negedge clock);
		reset <= ~reset;
		$display("INFO: Reset done!!");
	end
endtask

//slave with valid and master is ready  
  task slave_valid_master_ready;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
            m_axis_tready <= 1;
            s_axis_tvalid <= 1;
            s_axis_tdata <= data;
     end
   end
  endtask
  
 //slave with valid and master not ready 
  task slave_valid_master_not_ready;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 0;
        s_axis_tvalid <= 1;
        s_axis_tdata <= data;
     end
   end
  endtask
  
   //slave with out valid and master ready 
  task slave_not_valid_master_ready;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 1;
        s_axis_tvalid <= 0;
        s_axis_tdata <= data;
     end
   end
  endtask
  
  // Task to initiate AXI write transaction
  task axi_write;
    input [7:0] pak_len;
   
    begin
   while (1)
    begin
     @(posedge clock)
       if(s_axis_tready & !(count == pak_len))
       begin
       s_axis_tvalid  <= 1;
	   s_axis_tdata <= $random;
	   count = count+1;
	   if(count == pak_len) begin
	     s_axis_tlast <= 1;
	     count <= 0;
	     end
	     else 
	      s_axis_tlast = 0;
	   end
      //repeat (10) @(posedge clock); // Wait for a few clock cycles
    end
    end
  endtask 
  
  // Task to initiate AXI read transaction
  task axi_read;
  input [5:0] backpressure;
    begin
	   m_axis_tready <= 1;
	   	   repeat (4) @(posedge clock); // Wait for a few clock cycles
        @(posedge clock)
	     m_axis_tready <= 0;
	    wait_n =  backpressure;  //exerting back pressure: Wait for a back pressure no. of clock cycles
		repeat (wait_n) begin
			@(posedge clock);
		end
        @(posedge clock)
	   m_axis_tready <= 1;
	   repeat (10) @(posedge clock); // Wait for a few clock cycles
        @(posedge clock)
	   m_axis_tready <= 0;
	 repeat (2) @(posedge clock); // Wait for a few clock cycles
        @(posedge clock)
        m_axis_tready <= 1;
    end
  endtask
  
endmodule
