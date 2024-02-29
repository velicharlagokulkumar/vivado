`timescale 1ns / 1ps
module fifo_top_tb(
    );
    
	parameter DATA_WIDTH = 32;
	parameter DEPTH = 4096;

	// Ports
        logic                       clock = 0;
        logic                       reset = 1; 
        
        logic  [DATA_WIDTH-1:0]     s_axis_tdata;
        logic                       s_axis_tvalid=0;
        logic                       s_axis_tready;
        logic                       s_axis_tlast=0;
        
        
        logic [DATA_WIDTH-1:0]    m_axis_tdata;
        logic                     m_axis_tvalid;
        logic                     m_axis_tready=0;
        logic                     m_axis_tlast;

        integer count = 0;
        integer wait_n = 0;
          
 fifo_top #( 
     .DataWidth(DATA_WIDTH),
     .Depth(DEPTH)   
 ) fifo_4096 (
        .clk(clock),
        .reset(reset),
                
        .writeData(s_axis_tdata),
        .writeDataValid(s_axis_tvalid),
        .writeDataReady(s_axis_tready),
        .writeDataLast(s_axis_tlast),
     
        .readData(m_axis_tdata),
        .readDataValid(m_axis_tvalid),
        .readDataReady(m_axis_tready),
        .readDataLast(m_axis_tlast)
        
  );
  
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
	    wait_n =  backpressure;  // exerting back pressure: Wait for a back pressure no. of clock cycles
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

  /*  
  initial begin
    clk = 0;
    reset = 1;
    //writeReq = 0;
    //readReq = 0;
    readDataReady=0;
    #10 reset = 0;
    //#30 writeReq = 1;
     //#20800 writeReq=1;
    // #1000 readReq = 1;
     //#300 readDataReady=1;
     #60000 readDataReady=1'b1;
      //#200 readDataReady=1'b0;
     end

 always #5 clk=~clk;
                  
endmodule
*/