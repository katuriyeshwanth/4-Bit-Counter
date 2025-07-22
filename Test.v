module test;
reg clk,rst;
wire [3:0]count;
counter dut(rst,clk,count);
initial 
clk=0;
always #5 clk=~clk;

initial
begin
$monitor($time,"clk=%b,rst=%b,count=%b",clk,rst,count);
rst=1;
#10 rst=0;
#200
$stop;
end
endmodule
