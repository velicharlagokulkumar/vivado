`timescale 1ns / 1ps
module data_packer_tb(
    );
   
	   parameter DATA_WIDTH = 8;

	// Ports
        logic                       clock = 0;
        logic                       reset = 1; 
        logic [15:0]                confi; 
        
        logic  [DATA_WIDTH-1:0]     s_axis_tdata;
        logic                       s_axis_tvalid=0;
        logic                      s_axis_tready;
        logic                       s_axis_tlast=0;
        
        
        logic [DATA_WIDTH:0]    m_axis_tdata;
        logic                     m_axis_tvalid;
        logic                      m_axis_tready=0;
        logic                     m_axis_tlast;
  

         integer count = 0;
         integer wait_n = 0; 
         integer i;  
    
 data_packer packer_inst(
        .clk(clock),
        .reset(reset),
        .confi(confi),
        
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

  initial 
    begin
         reset_task();
         configure();
         slave_valid_master_ready(2);
         slave_valid_master_not_ready(3);
         slave_not_valid_master_ready(4);
         slave_not_valid_master_ready(5);
         slave_valid_master_ready(7);
         slave_valid_master_ready(2);
         slave_valid_master_not_ready(3);
         slave_not_valid_master_ready(4);
         slave_valid_master_ready(7);
         slave_valid_master_ready(8);
         slave_valid_master_ready(9);
         slave_valid_master_ready(10);
         slave_valid_master_ready(11);
         slave_valid_master_ready(7);
         slave_valid_master_ready(8);
         slave_valid_master_ready(9);
         slave_valid_master_ready(10);
         slave_valid_master_ready(11);
         slave_valid_master_ready(2);
         slave_valid_master_ready(4);
         slave_valid_master_ready_last_sample(3);
         
         slave_valid_master_ready(2);
         slave_valid_master_not_ready(3);
         slave_not_valid_master_ready(4);
         slave_not_valid_master_ready(5);
         slave_valid_master_ready(7);
         slave_valid_master_ready(2);
         slave_valid_master_not_ready(3);
         slave_not_valid_master_ready(4);
         slave_valid_master_ready(7);
         slave_valid_master_ready(8);
         slave_valid_master_ready(9);
         slave_valid_master_ready(10);
         slave_valid_master_ready(11);
         slave_valid_master_ready(7);
         slave_valid_master_ready(8);
         slave_valid_master_ready(9);
         slave_valid_master_ready(10);
         slave_valid_master_ready(11);
         slave_valid_master_ready(2);
         slave_valid_master_ready(4);
         slave_valid_master_ready_last_sample(3);
         deassert_all();
         /*
         fork
             axi_write(16);  //parameter: packet length no. bytes
             axi_read(7);  //parameter : apply back pressure for no. of clock cycles
         join
         */
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

task configure;
	begin
		@(posedge clock);
		confi <= 16'h0410;
		$display("INFO: configuration done!!");
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
            s_axis_tlast <= 0;
     end
   end
  endtask
  
 //slave with valid and master is ready and give last sample  
  task slave_valid_master_ready_last_sample;
  input [DATA_WIDTH-1:0] data;
  begin
    @(posedge clock)
    begin
            m_axis_tready <= 1;
            s_axis_tvalid <= 1;
            s_axis_tdata <= data;
            s_axis_tlast <= 1;
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
  
  //slave deassset_all
  task deassert_all;
  begin
    @(posedge clock)
    begin
        m_axis_tready <= 1;
        s_axis_tvalid <= 0;
        s_axis_tdata <= 0;
        s_axis_tlast <= 0;
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
       if(s_axis_tready)
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

 /* 
 counter_up #(
    .DataWidth(DATA_WIDTH)
  ) in568(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(s_axis_tdata),
 .count_valid(s_axis_tvalid),
 .count_ready(s_axis_tready),
 .count_last(s_axis_tlast) 
 );
    
  initial begin
    clk = 0;
    reset = 1;
    m_axis_tready=1'b1;
    confi = 16'h0410;
        #10 reset = 0;
  end
  

always #5 clk=~clk;
    */
