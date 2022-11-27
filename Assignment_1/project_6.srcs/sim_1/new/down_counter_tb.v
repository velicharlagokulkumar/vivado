module downcounter_testbench();
reg clk,latch,dec,divide_by_two;
reg [7:0]COUNT_IN;
wire [7:0] counter;
wire zero_flag;
down_counter dut(counter,zero_flag,clk,COUNT_IN,latch,dec,divide_by_two);

initial begin
COUNT_IN=16;
clk=0;
forever #5 clk=~clk;
end

initial begin
latch=0;
#20;
latch=1;
#20;
latch=0;
#50
latch=1;
#20
latch=0;
#200
latch=1;
#20
latch=0;
end

initial begin
dec=0;
divide_by_two =0;
#30
dec=1;
#20
dec=0;
divide_by_two=1;
#40
divide_by_two=0;
#60
divide_by_two=1;
#20
divide_by_two=0;
dec=1;
end

endmodule