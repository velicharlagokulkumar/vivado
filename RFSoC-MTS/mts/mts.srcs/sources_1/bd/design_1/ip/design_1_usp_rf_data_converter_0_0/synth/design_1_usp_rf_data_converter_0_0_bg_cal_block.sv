//----------------------------------------------------------------------------
// Title : Background calibration gain controller
// Project : UltraScale+ RF Data Converter
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ns / 1ps

//***********************************Entity Declaration************************
(* DowngradeIPIdentifiedWarnings="yes" *)
module design_1_usp_rf_data_converter_0_0_bg_cal_block (
  input                 clk_dig,
  input                 reset_b,
  
  input  signed [15:0]   din,
  input  signed [11:0]   coeff,
  output signed [15:0]   dout
  );
  
  reg  signed  [15:0]  din_ff;
  reg  signed  [15:0]  din_ff2;
  reg  signed  [30:0]  v1_var;
  wire signed  [47:0]  v1_var_ff;
  wire signed  [30:0]  v1_var_pipe;
  reg  signed  [30:0]  v1_var_pipe_ff;
  reg  signed  [15:0]  dout_ff;
  reg  signed  [15:0]  dout_nxt;
  wire signed  [16:0]  z1_net;
  reg                  round_term;
  
  reg  signed  [4:0][15:0]     din_pipe;
  reg  signed       [15:0]     dout_i; 
  
  parameter SAMPLE_NO = 0;

  generate
  if (SAMPLE_NO != 0) begin
  
    always @(*) begin
      v1_var     = (din_ff2 <<< 14);
      // Saturate the output if an overflow occurs
      dout_nxt   = (~z1_net[16] && z1_net[15]) ? 16'h7fff : ((z1_net[16] && ~z1_net[15]) ? 16'h8000 : z1_net[15:0]);      
    end
    
    // DSP with function C + (A*B)
    DSP48E2 #(
      .ACASCREG       (1),
      .BCASCREG       (0),
      .AREG           (1),
      .BREG           (0),
      .MREG           (1),
      .CREG           (1),
      .PREG           (1)
     )
    i_primitive (
      .ACIN           ({30{1'b0}}),
      .BCIN           ({18{1'b0}}),
      .ACOUT          (),
      .BCOUT          (),
      .PCIN           ({48{1'b0}}),
      .MULTSIGNIN     (1'b0),
      .MULTSIGNOUT    (),
      .CARRYCASCIN    (1'b0),
      .CARRYCASCOUT   (),
      .CARRYOUT       (),
      .A              ({{14{din_ff[15]}}, din_ff}),
      .B              ({{6{coeff[11]}}, coeff}),
      .C              ({{17{v1_var[30]}}, v1_var}),
      .CARRYIN        (1'b0),
      .CARRYINSEL     (3'b000),
      .CEA1           (1'b0),
      .CEA2           (1'b1),
      .CEB1           (1'b0),
      .CEB2           (1'b0),
      .CEC            (1'b1),
      .CECARRYIN      (1'b0),
      .CECTRL         (1'b1),
      .CEALUMODE      (1'b1),
      .CEM            (1'b1),
      .CEP            (1'b1),
      .CLK            (clk_dig),
      .OPMODE         (9'b000110101),
      .ALUMODE        (4'b0000),
      .RSTA           (1'b0),
      .RSTB           (1'b0),
      .RSTC           (1'b0),
      .RSTALLCARRYIN  (1'b0),
      .RSTCTRL        (1'b0),
      .RSTALUMODE     (1'b0),
      .RSTM           (1'b0),
      .RSTP           (1'b0),
      .P              (v1_var_ff),
      .PCOUT          (),     
      .RSTINMODE      (1'b0),
      .RSTD           (1'b0),
      .INMODE         (5'b00000),
      .D              (27'd0),
      .CEINMODE       (1'b0),  
      .CED            (1'b0),
      .CEAD           (1'b0),
      .XOROUT         (),
      .UNDERFLOW      (),
      .PATTERNDETECT  (),
      .PATTERNBDETECT (),
      .OVERFLOW       ()
      );
      
    assign v1_var_pipe = v1_var_ff[30:0];
    
    always_ff @(posedge clk_dig) begin
      if (~reset_b) begin
        din_ff         <= $signed({16{1'b0}});
        din_ff2        <= $signed({16{1'b0}});
        dout_ff        <= $signed({16{1'b0}});
        v1_var_pipe_ff <= $signed({31{1'b0}});
        round_term     <= 1'b0;
      end
      else begin
        din_ff         <= din;
        din_ff2        <= din_ff;
        dout_ff        <= dout_nxt;
        v1_var_pipe_ff <= v1_var_pipe;
        round_term     <= (v1_var_pipe[13] & |{~v1_var_pipe[14],v1_var_pipe[12:0]} & ~&{~v1_var_pipe[30],v1_var_pipe[29:14]}) | &{v1_var_pipe[30],~v1_var_pipe[29:14]};
      end
    end
    
    // Round the output
    assign z1_net = $signed(v1_var_pipe_ff[30:14] + round_term);
    
    assign dout = dout_ff;

  end
  else
  begin

    // The SUBADC0 output is not subject to gain but it is delayed
    // to align with the other outputs.
    always_ff @(posedge clk_dig) begin
      din_pipe[0]   <= din;
      din_pipe[4:1] <= din_pipe[3:0];
    end
    
    always_ff @(posedge clk_dig) begin
      if (~reset_b) begin
        dout_i        <=  $signed({16{1'b0}});
      end
      else begin
        dout_i        <= din_pipe[4];
      end
    end
    
    assign dout = dout_i;
    
  end
  endgenerate
    
 
endmodule
