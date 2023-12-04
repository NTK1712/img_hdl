module sobel(clk,din0,din1,din2,din3,din4,din5,din6,din7,din8,dout);
input clk;
input [7:0] din0,din1,din2,din3,din4,din5,din6,din7,din8;
output reg [8:0] dout;

reg [31:0] t1,t2,a,b;
reg [7:0] t3;
parameter 
	x0 = -1,	x1 = 0,	x2 = 1,
	x3 = -2, x4 = 0,	x5 = 2,
	x6 = -1,	x7 = 0,	x8 = 1,
	
	y0 = -1,	y1 = -2,	y2 = -1,
	y3 = 0,	y4 = 0,	y5 = 0,
	y6 = 1,	y7 = 2,	y8 = 1;
	
always @(posedge clk)
begin
	t1 = x0*din0 + x1*din1 + x2*din2 + x3*din3 + x4*din4 + x5*din5 + x6*din6 + x7*din7 + x8*din8;
	t2 = y0*din0 + y1*din1 + y2*din2 + y3*din3 + y4*din4 + y5*din5 + y6*din6 + y7*din7 + y8*din8;
	if (t1 > 255) t1 =0;
	if (t2 > 255) t2 =0;
	a = (t1 > t2) ? t1 : t2;
	b = (t1 > t2) ? t2 : t1;
	t3 = a*7/8 + b/2;
	if (a*7%8  > 4 || b % 2 == 1 )
		t3 = t3 + 1;
	dout = (t3 > a) ? t3 : a;
end

endmodule