`timescale 1ns / 1ps

module fp_add_tb(
    );
  wire [(inst_add.m + inst_add.n)-1:0] C;
  wire [(inst_add1.m + inst_add1.n)-1:0] C1;  
  wire [(inst_add2.m + inst_add2.n)-1 :0] C2;
  
  wire [(inst_add3.m + inst_add3.n)-1 :0] C3;
    wire [(inst_add4.m + inst_add3.n)-1 :0] C4;
      wire [(inst_add5.m + inst_add3.n)-1 :0] C5;
        wire [(inst_add6.m + inst_add3.n)-1 :0] C6;
    
  
  fp_add inst_add( 
        .A(16'b1101_110000000000), //-2.25
        .B(16'b000001_1000000000), //+1.05
        .C(C),
        .overflow(overflow)
  );
defparam  inst_add.n1=8'd4;
defparam  inst_add.m1=8'd12;
defparam  inst_add.n2=8'd6;
defparam  inst_add.m2=8'd10;  
   
    
 fp_add inst_add1( 
        .A(18'b111101_110000000000),//-2.25
        .B(14'b0001_1000000000),//+1.05
        .C(C1),
        .overflow(overflow1)
  );
defparam  inst_add1.n1=8'd6;
defparam  inst_add1.m1=8'd12;
defparam  inst_add1.n2=8'd4;
defparam  inst_add1.m2=8'd10;

 fp_add inst_add2( 
        .A(16'b1101_110000000000),//-2.25
        .B(14'b0001_1000000000),//+1.05
        .C(C2),
        .overflow(overflow2)
  );
defparam  inst_add2.n1=8'd4;
defparam  inst_add2.m1=8'd12;
defparam  inst_add2.n2=8'd4;
defparam  inst_add2.m2=8'd10;

 fp_add inst_add3( 
        .A(4'b0001),//+1
        .B(4'b0011),//+3
        .C(C3),
        .overflow(overflow3)
  );
defparam  inst_add3.n1=8'd4;
defparam  inst_add3.m1=8'd0;
defparam  inst_add3.n2=8'd4;
defparam  inst_add3.m2=8'd0;

 fp_add inst_add4( 
        .A(4'b0101),//+5
        .B(4'b0110),//+6
        .C(C4),
        .overflow(overflow4)
  );
defparam  inst_add4.n1=8'd4;
defparam  inst_add4.m1=8'd0;
defparam  inst_add4.n2=8'd4;
defparam  inst_add4.m2=8'd0;

 fp_add inst_add5( 
        .A(4'b1101),//-3
        .B(4'b1101),//-3
        .C(C5),
        .overflow(overflow5)
  );
defparam  inst_add5.n1=8'd4;
defparam  inst_add5.m1=8'd0;
defparam  inst_add5.n2=8'd4;
defparam  inst_add5.m2=8'd0;

 fp_add inst_add6( 
        .A(4'b1011),//-5
        .B(4'b1010),//-6
        .C(C6),
        .overflow(overflow6)
  );
defparam  inst_add6.n1=8'd4;
defparam  inst_add6.m1=8'd0;
defparam  inst_add6.n2=8'd4;
defparam  inst_add6.m2=8'd0;

endmodule
