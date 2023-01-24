module freqdiv(clock,reset,q0,q1);
input clock,reset;
output q0,q1;
  dflip ad1(~q1,clock,reset,q1);
  dflip ad0(~q0,q1,reset,q0);
endmodule

module dflip(d,clk,rst,out);
input d,clk,rst;
output reg out;
always @(posedge clk or posedge rst)
begin
if (rst==1)
out<=0;
else
out<=d;
end
endmodule
