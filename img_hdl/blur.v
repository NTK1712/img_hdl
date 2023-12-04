module blur(clk,din0,din1,din2,din3,din4,din5,din6,din7,din8,dout);
input clk;
input [7:0] din0,din1,din2,din3,din4,din5,din6,din7,din8;
output reg [7:0] dout;

reg [31:0] t,t1;
parameter 
	k0 = 45354,
	k1 = 56641,
	k2 = 45354,
	k3 = 56641,
	k4 = 70736,
	k5 = 56641,
	k6 = 45354,
	k7 = 56641,
	k8 = 45354;	

always @(posedge clk)
begin
	t = k0*din0 + k1*din1 + k2*din2 + k3*din3 + k4*din4 + k5*din5 + k6*din6 + k7*din7 + k8*din8;
	dout = t/1000000;
	t1 = t%1000000;
	if (t1 > 499999)
		dout = dout + 1;
	else dout = dout;
	
end 

endmodule