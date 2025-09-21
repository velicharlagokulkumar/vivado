
module pl_sysref(
    input  wire pl_clk,  
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_P" *)
    input  wire pl_sysref_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_N" *)
    input  wire pl_sysref_n,
    
    input  wire selNeg,
    output wire  user_sysref_adc,          
    output wire  user_sysref_dac          
  );       

    (* dont_touch = "true" *) reg ff0;
    (* dont_touch = "true" *) reg ff1;
    (* dont_touch = "true" *) reg ff2;
    (* dont_touch = "true" *) reg ffDac;
    (* dont_touch = "true" *) reg ffAdc;
    wire pl_sysref_rising;
    wire pl_sysref_falling;
    wire pl_sysref_i;

   IBUFDS #(
      .DQS_BIAS("FALSE")  // (FALSE, TRUE)
   )
   IBUFDS_inst (
      .O(pl_sysref_i),   // 1-bit output: Buffer output
      .I(pl_sysref_p),   // 1-bit input: Diff_p buffer input (connect directly to top-level port)
      .IB(pl_sysref_n)  // 1-bit input: Diff_n buffer input (connect directly to top-level port)
   );

   IDDRE1 #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // IDDRE1 mode (OPPOSITE_EDGE, SAME_EDGE, SAME_EDGE_PIPELINED)
      .IS_CB_INVERTED(1'b0),          // Optional inversion for CB
      .IS_C_INVERTED(1'b0)            // Optional inversion for C
   )
   IDDRE1_inst (
      .Q1(pl_sysref_rising), // 1-bit output: Registered parallel output 1
      .Q2(pl_sysref_falling), // 1-bit output: Registered parallel output 2
      .C(pl_clk),   // 1-bit input: High-speed clock
      .CB(pl_clk), // 1-bit input: Inversion of High-speed clock C
      .D(pl_sysref_i),   // 1-bit input: Serial Data Input
      .R(1'b0)    // 1-bit input: Active High Async Reset
   );

    
    assign user_sysref_dac = ffDac;
    assign user_sysref_adc = ffAdc;

	always @(posedge pl_clk) begin
	   if(selNeg) ff0 <= pl_sysref_falling;
	   else       ff0 <= pl_sysref_rising;
	   ff1   <= ff0;
	   ff2   <= ff1;
	   
       ffDac <= ff2;
       ffAdc <= ff2;
	end
    
endmodule
