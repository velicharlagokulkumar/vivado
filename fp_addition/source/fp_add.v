 //Q(n1.m1) + Q(n2.m2) = Q(max(n1,n2).max(m1,m2))
 //This module will think both numbers as signed numbers always 
        
`timescale 1ns / 1ps
module fp_add #(  
        parameter n1 = 8'd4,  //A: signed integer bit width
        parameter m1 = 8'd12,  //fractional
                
        parameter n2 = 8'd6,   //B: signed integer bit width
        parameter m2 = 8'd10,   //fractional part
             
        parameter n = (n1 > n2)? n1: n2,
        parameter m = (m1 > m2)? m1: m2
         
)(
        input [m1 + n1 - 1:0] A,
        input [m2 + n2 - 1:0] B,
        output [m + n - 1:0] C,
        output overflow
  );
  
    localparam MAX_n = (n1 > n2)? n1: n2;
    localparam MAX_m = (m1 > m2)? m1: m2;
    localparam MAX_size = (MAX_n + MAX_m);
    
    wire [7:0] shift;
    
    wire [MAX_size-1 : 0] temp_a;
    wire [MAX_size-1 : 0] temp_b;
    
    reg [MAX_size-1 : 0] temp_1;
    reg [MAX_size-1 : 0] temp_2;
     
    always @ (*) //for fixing binary point (alignment): padding 0's at LSB by shift
     begin
      if(m1 > m2) begin
        temp_1 = temp_a;
        temp_2 = temp_b << shift;
       end
       else 
        if (m1 < m2) begin
        temp_1 = temp_a << shift;
        temp_2 = temp_b;
       end
     else begin
        temp_1 = temp_a;
        temp_2 = temp_b;
     end 
    end
       
  assign temp_a = $signed(A); //for sign extending
  assign temp_b = $signed(B); //for sign extending
   
  assign shift = (m1 > m2 ? m1 - m2 : m2 - m1);// shift needed for aligning the biary point
  
  assign C = temp_1 + temp_2; //fixed point addition 
  assign overflow = ~(temp_1[MAX_size-1])& ~(temp_2[MAX_size-1]) & (C[MAX_size-1]) | (temp_1[MAX_size-1])& (temp_2[MAX_size-1]) & ~(C[MAX_size-1]);
    //overflow function theory see doc
endmodule
