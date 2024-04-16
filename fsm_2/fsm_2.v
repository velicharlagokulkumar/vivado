module fsm_3(
    clk,
    areset,
    
    config_in_tdata,
    config_in_tvalid,
    config_in_tready,
   
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tkeep,
    
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tkeep
 );
 
    parameter DATA_WIDTH = 16;
  
    input  wire                     clk;
    input  wire                     areset;
    
    input  wire [7:0]               config_in_tdata;
    input  wire                     config_in_tvalid;
    output wire                     config_in_tready;

    input  wire [DATA_WIDTH-1:0]    s_axis_tdata;
    input  wire                     s_axis_tvalid;
    output wire                     s_axis_tready;
    input  wire                     s_axis_tlast;
    input  wire [7:0]               s_axis_tkeep;


    output wire [DATA_WIDTH-1:0]    m_axis_tdata;
    output wire                     m_axis_tvalid;
    input  wire                     m_axis_tready;
    output wire                     m_axis_tlast;
    output wire [7:0]               m_axis_tkeep;

 localparam  STATE_Initial = 3'd0 ,
             STATE_1 = 3'd1 ,
             STATE_2 = 3'd2 ,
             STATE_3 = 3'd3 ,
             STATE_4 = 3'd4 ;
             
 localparam  IDLE = 4'd0,   
             s0 = 4'd1,
             s1 = 4'd2,
             s2 = 4'd3,
             s3 = 4'd4,
             s4 = 4'd5,
             s5 = 4'd6,
             s6 = 4'd7, 
             RD_CONFIG = 4'd8;
             
  localparam  nones = 3'd0,
                g1 = 3'd1,
                g2 = 3'd2,
                g3 = 3'd3,
                g4 = 3'd4; 
            
            
 reg [2:0] cs;
 reg [2:0] ns;                  
                      
 reg config_in_tready_r;       

 reg [3:0] CurrentState ;
 reg [3:0] NextState ;
 
 reg flag2;
 reg flag3;
 
 reg m_axis_tready_r=0;
 reg m_axis_tvalid_r;
 
 reg [15:0] prev_data;
 
 reg t_ready;
 reg [7:0] t_keep_out;
 
 reg [3:0] state;
 reg [3:0] state_d;
 
 reg [3:0] next_state;
 reg [7:0] config_in_tdata_reg;
 
 reg valid_out;
 reg [7:0] t_keep_out_d;
 reg [7:0] t_keep_o;
 
 
 reg [15:0] mem=0;
 reg [15:0] mem_d = 0;
 
 reg [15:0] mem_1=0;
 reg [15:0] mem_2=0; 
 
 reg [15:0] mem_s;
 
 wire [15:0] i_wdata;

 reg  [3:0] i_wstrb;
 wire [4:0] i_wstrb_i;
 
 integer k;
 wire [15:0] temp1;
 
 reg [DATA_WIDTH-1:0] reg_data;
 reg [7:0] s_axis_tkeep_reg = 0;
 reg [7:0] s_axis_tkeep_reg_t = 0;
 
 reg [7:0] s_axis_tkeep_reg_t_r = 0;
 reg [7:0] s_axis_tkeep_reg_t_r2 = 0;
 
 reg [7:0] s_axis_tkeep_reg_t_r_d=0;
 
 
 reg [7:0] s_axis_tkeep_reg_t2=0;
 reg [7:0] s_axis_tkeep_reg_t2_d=0;
  
 reg [7:0] s_axis_tkeep_reg_t3;
 
 reg [7:0] s_axis_tkeep_reg_t4=0;
 reg [7:0] s_axis_tkeep_reg_t4_r=0;
 
  reg [7:0] s_axis_tkeep_reg_t5=0;
 reg [7:0] s_axis_tkeep_reg_t5_r=0;
 
 
 reg [4:0] s_axis_tkeep_reg_rem;
 
 reg [7:0] s_axis_tkeep_d;
  reg [7:0] s_axis_tkeep_d2;
 
 wire  [7:0] t_keep;

always@ ( posedge clk ) begin
    if ( areset ) 
     reg_data <= 0 ;
    else 
     if(NextState == (STATE_2))
      reg_data <= i_wdata ;
 end
 
always @(posedge clk )
 begin 
  if(NextState == (STATE_2)) begin
	for(k=0; k < DATA_WIDTH/4; k=k+1)
	begin
		if (i_wstrb[k])
		  begin
			mem[k*4+:8] <= i_wdata[k*4+:8];
	      end
		else 
		  begin
			mem[k*4+:8] <= 4'b0;
	      end
	end
  end
end 

 always@ (*) 
 begin
  NextState = CurrentState ;     
    case (CurrentState)
         STATE_Initial : begin //IDEL state or RESET state
                          NextState = STATE_1;
                          valid_out = 0;
                         end
                
          STATE_1 : begin  //Ready state
                       if(s_axis_tvalid) begin
                        NextState = STATE_2;
                        valid_out = 1;           
                       end
                       else begin
                        NextState = STATE_1;
                        valid_out = 0;
                     end
                     end
          STATE_2 : begin  //enable state
                   if((valid_out == 0) | ((m_axis_tready == 1) & (valid_out == 1)))
                      if(s_axis_tvalid)
                       begin
                          NextState = STATE_2;
                       end
                      else
                          NextState = STATE_4;  
                   else
                        NextState = STATE_3;                     
                     end 
                     
          STATE_3 : begin //Hold State
                     if(m_axis_tready)
                       NextState = STATE_2;
                    end
                     
          STATE_4 : begin //Hold State
                     if(s_axis_tvalid)
                       NextState = STATE_2;
                    end
     endcase
 end

 
 always@ ( posedge clk ) begin
    if ( areset ) 
     CurrentState <= STATE_Initial ;
    else 
     CurrentState <= NextState ;
   end
     
always@(posedge clk)
    begin
    if(areset)
      state <= IDLE;
      else
      state <= next_state;
    end


always@(*)
begin
next_state = state;
 if(m_axis_tready_r)
 case(state)
  IDLE:  begin //0 (Default)
          if(!areset)
           next_state = RD_CONFIG; 
          end
            
  s0:  begin //1 (less than sixteen) 
            if(s_axis_tkeep_reg_t < 16)
             next_state = s5;
             else if(s_axis_tkeep_reg_t ==16)
             next_state = s1;
             else
             next_state = s2;
         end 
         
          
  s1:    if(t_last)
           next_state = s6;
         else if (s_axis_tkeep_reg_t < 16) //equal to sixteen
             next_state = s0;
          else if(s_axis_tkeep_reg_t ==16)
             next_state = s1;
           else
             next_state = s2;        
         
  s2:  begin //3 (greater than sixteen)  
          next_state = s3;
        end 
                                    
  s3:  begin //4 extension state
        if(t_last)
          begin
           if(s_axis_tkeep_reg_t == 16)
             next_state = s1;
           else
             next_state = s6;
          end  
            else if(s_axis_tkeep_reg_t < 16)
             next_state = s4;
             else if(s_axis_tkeep_reg_t ==16)
             next_state = s1;
             else 
             next_state = s2;                       
        end 
  s4 : begin //5  extention state
            if(s_axis_tkeep_reg_t < 16)
             next_state = s4;
             else if(s_axis_tkeep_reg_t ==16)
             next_state = s1;
             else
             next_state = s2;                       
        end
  s5 :  begin //6 (less than sixteen need of shift with accumulate) 
        if(s_axis_tkeep_reg_t < 16)
         next_state = s5;
         else if(s_axis_tkeep_reg_t ==16)
         next_state = s1;
         else
         next_state = s2;         
     end 
     
  s6 : begin
        if(s_axis_tkeep_reg_t < 16)
         next_state = s0;
         else if(s_axis_tkeep_reg_t ==16)
         next_state = s1;
         else
         next_state = s2;
       end 
       
  RD_CONFIG : begin
		    if(config_in_tvalid == 1)
             if(s_axis_tvalid & s_axis_tready)
             begin
                 if(s_axis_tkeep_reg_t4 < 16)
                 next_state = s5;
                 else if(s_axis_tkeep_reg_t ==16)
                 next_state = s1;
                 else
                 next_state = s2;
             end
             else
             next_state = RD_CONFIG;
           end
  endcase
end 

 

always@(*)
 begin
 if(m_axis_tready_r)
    case(state)
   s0 : begin //1 less
           mem_1 = mem; //acumulate
           //mem_1 = mem_d << s_axis_tkeep_reg_t_r_d;//accumulate
        end
   s1 : begin //2 equal
           case(s_axis_tkeep_reg_t_r_d)
           4: mem_s = (mem << 4) + mem_d;
           8: mem_s = (mem << 8) + mem_d;
           12: mem_s = (mem << 12) + mem_d;
           0: mem_s = mem;
           endcase
        end        
   s2 : begin //3 over
         case(s_axis_tkeep_reg_t_r_d)
          4: begin
              mem_1 = mem_d + (mem << 4);
              mem_s = mem_1;
             end
          8: begin 
              mem_1 = mem_d + (mem << 8);
              mem_s = mem_1;
             end   
          12: begin 
               mem_1 = mem_d + (mem << 12);
               mem_s = mem_1;
             end
         endcase
        end 
   s3 : begin //4
         case(s_axis_tkeep_reg_t3)
         4: mem_1 = (mem >> 4);
         8: mem_1 = (mem >> 8);
         12: mem_1 = (mem >> 12);
         endcase
       end
   s4 : begin //5
         case(s_axis_tkeep_reg_t_r_d)
           4: mem_1 = (mem << 4) + mem_d;
           8: mem_1 = (mem << 8) + mem_d;  
           12: mem_s = mem_1 + (mem << 12);         
         endcase
      end
       
   s5 : begin //6
         case(s_axis_tkeep_reg_t_r_d)
           4: mem_1 = (mem << 4) + mem_d;
           8: mem_1 = (mem << 8) + mem_d;
          12: mem_1 = (mem << 12) + mem_d;   
         endcase
      end 
   s6 : begin
         case(s_axis_tkeep_reg_t_r_d)
           0: begin
               mem_s = mem;
               t_keep_o = 4;
              end
           4: begin
              mem_s = (mem << 4) + mem_d;
              t_keep_o = 16;
              end
           8: mem_s = (mem << 8) + mem_d;   
         endcase
       
      end            
   endcase
   
  end  
    
always@(posedge clk)
begin
if(m_axis_tready & s_axis_tvalid)
begin
  s_axis_tkeep_reg_t4_r <= s_axis_tkeep_reg_t4; 
  if(next_state != s6)
    begin
     s_axis_tkeep_reg_t_r <= (s_axis_tkeep_reg_t >= 16) ? s_axis_tkeep_reg_t2 : s_axis_tkeep_reg_t;
     s_axis_tkeep_reg_t_r_d <= s_axis_tkeep_reg_t_r;
    end
  else
     s_axis_tkeep_reg_t_r <= 0;
     s_axis_tkeep_reg_t_r_d <= s_axis_tkeep_reg_t_r;
  end  
  
  m_axis_tready_r <= m_axis_tready;
  mem_d <= mem_1;
  t_keep_out_d <= t_keep_out;
  s_axis_tkeep_d <= t_keep;
  s_axis_tkeep_d2 <= s_axis_tkeep_d;
  state_d <= state; 
 end
 
 always@(posedge clk)
     begin
     if(state == s2)
      s_axis_tkeep_reg_t3 <= 16 - s_axis_tkeep_reg_t_r_d;
     end
 
 
 always@(*)
 begin
     if(NextState == STATE_2 & t_ready)
         begin
          s_axis_tkeep_reg_t = t_keep + s_axis_tkeep_reg_t_r;
          s_axis_tkeep_reg_t2 = s_axis_tkeep_reg_t % 16;
      
       // s_axis_tkeep_reg_t4 = t_keep + s_axis_tkeep_reg_t4_r;    
       if(s_axis_tdata != prev_data)
         begin
          s_axis_tkeep_reg_t4 = t_keep + s_axis_tkeep_reg_t4_r; 
          s_axis_tkeep_reg_t5 = (t_keep + s_axis_tkeep_reg_t4_r) % 40;   
          end
       end 
 end
 
always@(*)
begin
 if(m_axis_tready)
     if(state == s2 |state == s1)
       begin
        t_keep_out = 16;
       end
     else if(state == s6)
       begin
        t_keep_out = t_keep_o;
       end
     else
       begin
        t_keep_out = t_keep_out_d;
       end
 end

 /*
 always@(posedge clk)
 begin
     if(areset)
     cs <= nones;
     else
     cs <= ns;
 end
 
always@(*)
begin
ns = cs;
case(cs)
  nones: ns = g1;
  g1:begin 
      if(s_axis_tkeep_reg_t < 16)
      ns = g1;
      else if(s_axis_tkeep_reg_t ==16)
      ns = g2;
      else 
      ns = g3;
      end
  g2: begin
      end
  g3:  ns = g4;   
endcase
end


always@(*)
begin
 case(cs)
 g1: s_axis_tkeep_reg_t2 = s_axis_tkeep_reg_t_r;
 g2: s_axis_tkeep_reg_t2 = 16;
 g3: s_axis_tkeep_reg_t2 = 16;
 g4: s_axis_tkeep_reg_t2 = s_axis_tkeep_reg_t2_d % 16;
 endcase
end
 */
 
 always@(*) begin
 case(i_wstrb_i)
  1 :  i_wstrb = 4'b0001;
  2 :  i_wstrb = 4'b0011;
  3 :  i_wstrb = 4'b0111;
  4 :  i_wstrb = 4'b1111;
  endcase
 end
 
 always@(*)
 begin
   if(state != s2)
     t_ready=1;
     else 
     t_ready=0; 
 end
 
 always @(posedge clk) begin
		if(config_in_tready==1 && config_in_tvalid==1)begin
			config_in_tdata_reg <= config_in_tdata;
		end
	end 
 
 always@(posedge clk)
  begin
    prev_data <= s_axis_tdata;
    s_axis_tkeep_reg_t4_r <= (s_axis_tkeep_reg_t4 >= 40) ? s_axis_tkeep_reg_t5 : s_axis_tkeep_reg_t4; 
  end
 

always @(*) 
begin 
    if(areset) 
    begin
        config_in_tready_r = 0;
    end
    else 
     begin
        if(state == RD_CONFIG)begin
            config_in_tready_r = 1;
        end
        else  begin
            config_in_tready_r = 0 ;
        end
    end
end


always@(posedge clk)
begin
 if(((CurrentState == STATE_2) | (CurrentState == STATE_3)) & ((state == s2) | (state == s1)))
   m_axis_tvalid_r <= 1;
 end
 
 
 assign t_keep = s_axis_tkeep;
 assign i_wdata = s_axis_tdata;
 
 assign config_in_tready = config_in_tready_r;
 
 assign t_last = s_axis_tlast;
 assign i_wstrb_i = s_axis_tkeep/4;

 assign s_axis_tready = (CurrentState == (STATE_1)) | (NextState == (STATE_2)) & (next_state != s2);
 assign m_axis_tdata =  mem_s;
 assign m_axis_tkeep = t_keep_out; 
 
 assign m_axis_tvalid = m_axis_tvalid_r;
 
 endmodule
