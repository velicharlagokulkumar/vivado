`timescale 1ns / 1ps

module mux_top_tb(
    );
    
	parameter DATA_WIDTH = 32;

	// Ports
        reg clock = 0;
        reg reset = 1;
        
        reg sel=0;
        
        reg [DATA_WIDTH-1:0] s_axis_tdata_A;
        reg s_axis_tvalid_A=0;
        wire s_axis_tready_A;
        reg s_axis_tlast_A=0;
        
        reg [DATA_WIDTH-1:0] s_axis_tdata_B;
        reg s_axis_tvalid_B=0;
        wire s_axis_tready_B;
        reg s_axis_tlast_B=0;
        
        wire [DATA_WIDTH-1:0] m_axis_tdata;
        wire m_axis_tvalid;
        reg m_axis_tready=0;
        wire m_axis_tlast;
        
 
 two_to_one_st_mux  #(
        .DATA_WIDTH(DATA_WIDTH)
   ) inst_mux ( 
        .clk(clock),
        .reset(reset),
        
        .sel(sel),
        
        .s_axis_tdata_A(s_axis_tdata_A),
        .s_axis_tvalid_A(s_axis_tvalid_A),
        .s_axis_tready_A(s_axis_tready_A),
        .s_axis_tlast_A(s_axis_tlast_A),
        
        .s_axis_tdata_B(s_axis_tdata_B),
        .s_axis_tvalid_B(s_axis_tvalid_B),
        .s_axis_tready_B(s_axis_tready_B),
        .s_axis_tlast_B(s_axis_tlast_B),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

         integer count_1 = 0;
         integer count_2 = 0;
         
         integer wait_n = 0;

  initial 
    begin
         reset_task();
         sel=0;                      //Basic Hand shake test:for testing stream A
         slave_valid_master_ready_A(2);
         slave_valid_master_not_ready_A(3);
         slave_not_valid_master_ready_A(4);
         slave_not_valid_master_ready_A(5);
         slave_not_valid_master_ready_A(6);
         slave_valid_master_ready_A(7);
         @(posedge clock) sel=1;
         slave_valid_master_ready_B(8);           //Basic Hand shake test: for testing stream B
         slave_valid_master_not_ready_B(9);
         slave_not_valid_master_ready_B(10);
         slave_not_valid_master_ready_B(11);
         slave_not_valid_master_ready_B(12);
         slave_valid_master_ready_B(13);
         @(posedge clock) sel=1;              //change me: to select the stream (A/B) to apply below test    
         fork                       //packet testing: with applying back pressure
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
  task slave_valid_master_ready_A;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
            m_axis_tready <= 1;
            s_axis_tvalid_A <= 1;
            s_axis_tdata_A <= data;
     end
   end
  endtask
  
 //slave with valid and master not ready 
  task slave_valid_master_not_ready_A;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 0;
        s_axis_tvalid_A <= 1;
        s_axis_tdata_A <= data;
     end
   end
  endtask
  
   //slave with out valid and master ready 
  task slave_not_valid_master_ready_A;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 1;
        s_axis_tvalid_A <= 0;
        s_axis_tdata_A <= data;
     end
   end
  endtask
  
  
  //slave with valid and master is ready  
  task slave_valid_master_ready_B;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
            m_axis_tready <= 1;
            s_axis_tvalid_B <= 1;
            s_axis_tdata_B <= data;
     end
   end
  endtask
  
 //slave with valid and master not ready 
  task slave_valid_master_not_ready_B;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 0;
        s_axis_tvalid_B <= 1;
        s_axis_tdata_B <= data;
     end
   end
  endtask
  
   //slave with out valid and master ready 
  task slave_not_valid_master_ready_B;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 1;
        s_axis_tvalid_B <= 0;
        s_axis_tdata_B <= data;
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
       if(s_axis_tready_A)
       begin
       s_axis_tvalid_A  <= 1;
	   s_axis_tdata_A <= $random;
	   count_1 = count_1 + 1;
	   if(count_1 == pak_len) begin
	     s_axis_tlast_A <= 1;
	     count_1 <= 0;
	     end
	     else 
	      s_axis_tlast_A = 0;
	   end
	 else if(s_axis_tready_B)
       begin
       s_axis_tvalid_B  <= 1;
	   s_axis_tdata_B <= $random;
	   count_2 = count_2 + 1;
	   if(count_2 == pak_len) begin
	     s_axis_tlast_B <= 1;
	     count_2 <= 0;
	     end
	     else 
	      s_axis_tlast_B = 0;
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
