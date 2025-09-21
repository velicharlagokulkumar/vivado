`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2018 11:17:40 PM
// Design Name: 
// Module Name: startup
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module startup #(
    parameter FAMILY = "ULTRA"    // SERIES7, ULTRA, 
) (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CFGMCLK_RAW CLK" *)
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 50000000" *)
    output wire CFGMCLK_RAW
);

generate
    if(FAMILY == "ULTRA") begin
         STARTUPE3 #(
               .PROG_USR     ("FALSE"),   // Activate program event security feature. Requires encrypted bitstreams.
               .SIM_CCLK_FREQ(   20.0)    // Set the Configuration Clock Frequency (ns) for simulation
            )
            STARTUPE3_inst (
               .CFGCLK   (           ),   // 1-bit output: Configuration main clock output
               .CFGMCLK  (CFGMCLK_RAW),   // 1-bit output: Configuration internal oscillator clock output
               .DI       (           ),   // 4-bit output: Allow receiving on the D input pin
               .EOS      (           ),   // 1-bit output: Active-High output signal indicating the End Of Startup
               .PREQ     (           ),   // 1-bit output: PROGRAM request to fabric output
               .DO       (          0),   // 4-bit input: Allows control of the D pin output
               .DTS      (    4'b1111),   // 4-bit input: Allows tristate of the D pin
               .FCSBO    (          0),   // 1-bit input: Controls the FCS_B pin for flash access
               .FCSBTS   (       1'b1),   // 1-bit input: Tristate the FCS_B pin
               .GSR      (          0),   // 1-bit input: Global Set/Reset input (GSR cannot be used for the port)
               .GTS      (          0),   // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
               .KEYCLEARB(          0),   // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
               .PACK     (          0),   // 1-bit input: PROGRAM acknowledge input
               .USRCCLKO (          0),   // 1-bit input: User CCLK input
               .USRCCLKTS(          0),   // 1-bit input: User CCLK 3-state enable input
               .USRDONEO (          0),   // 1-bit input: User DONE pin output control
               .USRDONETS(          0)    // 1-bit input: User DONE 3-state enable output
            );
     end
endgenerate

generate
    if(FAMILY == "SERIES7") begin
        STARTUPE2 #(
            .PROG_USR      ("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
            .SIM_CCLK_FREQ (   20.0)   // Set the Configuration Clock Frequency(ns) for simulation.
        )
        STARTUPE2_inst (     
            .CFGCLK    (           ),  // 1-bit output: Configuration main clock output
            .CFGMCLK   (cfgmclk_raw),  // 1-bit output: Configuration internal oscillator clock output
            .EOS       (           ),  // 1-bit output: Active high output signal indicating the End Of Startup.
            .PREQ      (           ),  // 1-bit output: PROGRAM request to fabric output
            .CLK       (          0),  // 1-bit input: User start-up clock input
            .GSR       (          0),  // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
            .GTS       (          0),  // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
            .KEYCLEARB (          0),  // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
            .PACK      (          0),  // 1-bit input: PROGRAM acknowledge input
            .USRCCLKO  (          0),  // 1-bit input: User CCLK input
            .USRCCLKTS (          0),  // 1-bit input: User CCLK 3-state enable input
            .USRDONEO  (          0),  // 1-bit input: User DONE pin output control
            .USRDONETS (          0)   // 1-bit input: User DONE 3-state enable output
        );
     end
endgenerate

endmodule
