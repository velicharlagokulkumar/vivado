`timescale 1ns / 1ps
module fsm_3_tb(
    );
    
    parameter DATA_WIDTH = 16;
  
    reg                       clk;
    reg                       areset;
    
    reg   [DATA_WIDTH-1:0]    s_axis_tdata;
    reg                       s_axis_tvalid;
    wire                      s_axis_tready;
    reg                       s_axis_tlast=0;
    reg   [7:0]               s_axis_tkeep;
    
    
    reg   [7:0]               config_in_tdata;
    reg                       config_in_tvalid;
    wire                      config_in_tready;
    
    
    wire [DATA_WIDTH-1:0]     m_axis_tdata;
    wire                      m_axis_tvalid;
   
    wire                      m_axis_tready;
   
    wire                      m_axis_tlast;
    wire [7:0]                m_axis_tkeep;
    
    wire [DATA_WIDTH-1:0]     m_axis_tdata2;
    wire                      m_axis_tvalid2;
    reg                       m_axis_tready2;
    wire                      m_axis_tlast2;
    wire [7:0]                m_axis_tkeep2;
    
    integer count = 0;
    integer wait_n = 0;
    integer random_number;
    
    
fsm_1 inst_fsm(
    .clk(clk),
    .areset(areset),
    
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tkeep(s_axis_tkeep),
    
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tkeep(m_axis_tkeep)
 );     
    
      
fsm_3 inst_fsm2(
    .clk(clk),
    .areset(areset),
    
    .config_in_tdata(config_in_tdata),
    .config_in_tvalid(config_in_tvalid),
    .config_in_tready(config_in_tready),
    
    .s_axis_tdata(m_axis_tdata),
    .s_axis_tvalid(m_axis_tvalid),
    .s_axis_tready(m_axis_tready),
    .s_axis_tlast(m_axis_tlast),
    .s_axis_tkeep(m_axis_tkeep),
    
    .m_axis_tdata(m_axis_tdata2),
    .m_axis_tvalid(m_axis_tvalid2),
    .m_axis_tready(m_axis_tready2),
    .m_axis_tlast(m_axis_tlast2),
    .m_axis_tkeep(m_axis_tkeep2)
 ); 
 
initial
  begin
    clk=0;
    areset=1;
    s_axis_tvalid = 0;
    m_axis_tready2 = 1;
    
    config_in_tdata=0;
    config_in_tvalid=0;
    
    #10 areset =0;
    config_in_tdata = 40;
    config_in_tvalid = 1'b1;
    
    #15 
       fork
          axi_write(16);
          t_keep();
          axi_read(30);
       join  
       
       /* m_axis_tready=1;
        s_axis_tvalid=1;
       
        custom(16'h3524,12);
        custom(16'h5e81,4);
        custom(16'hd609,12);
        custom(16'h5663,8);
        custom(16'h7b0d,8);
        custom(16'h998d,12);
    */
        //custom(3524,12);
  end
 
 
 always #5 clk=~clk;  
 
 task axi_write;
    input [7:0] pak_len;
   begin
   s_axis_tvalid  <= 1;
   s_axis_tdata <= $random;
   while (1)
    begin
     @(posedge clk)
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
	   else
	   s_axis_tdata <= s_axis_tdata;
      //repeat (10) @(posedge clock); // Wait for a few clock cycles
    end
    end
  endtask
  
 task axi_read;
  input [5:0] backpressure;
    begin
	   m_axis_tready2 <= 1;
	   	   repeat (50) @(posedge clk); // Wait for a few clock cycles
        @(posedge clk)
	     m_axis_tready2 <= 0;
	    wait_n =  backpressure;  //exerting back pressure: Wait for a back pressure no. of clock cycles
		repeat (wait_n) begin
			@(posedge clk);
		end
        @(posedge clk)
	   m_axis_tready2 <= 1;
	   repeat (10) @(posedge clk); // Wait for a few clock cycles
        @(posedge clk)
	   m_axis_tready2 <= 0;
	 repeat (2) @(posedge clk); // Wait for a few clock cycles
        @(posedge clk)
        m_axis_tready2 <= 1;
    end
  endtask
  
 task t_keep;
 begin
 	   random_number = $urandom_range(1, 12);
	   s_axis_tkeep = random_number + (4 - (random_number % 4));
  while (1)
    begin
      @(posedge clk)
       if(s_axis_tready)
       begin
	   random_number = $urandom_range(1, 12);
	   s_axis_tkeep = random_number + (4 - (random_number % 4));
       end
    end
    end   
endtask

task custom;
input [15:0] data;
input [7:0] tkeep;
begin
 @(posedge clk)
  begin
   s_axis_tdata  <= data;
   s_axis_tkeep   <= tkeep;
  end
end

endtask

endmodule
