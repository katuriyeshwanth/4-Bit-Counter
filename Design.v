module counter(rst,clk,count);
input clk,rst;
output reg [3:0]count;
always @(posedge clk,posedge rst)
begin
if(rst)
count<=0000;
else
count<=count+1;
end
endmodule 
