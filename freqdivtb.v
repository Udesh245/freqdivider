module freqdivtb();
reg clock,reset;
wire q1,q0;

freqdiv dut(clock,reset,q0,q1);

initial
begin
clock=0;
#5 reset=1'b1;
#5 reset=1'b0;
#100 $finish; 
end
always #5 clock=~clock;

endmodule
