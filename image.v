module image(clk,sel,value,din0,din1,din2,din3,din4,din5,din6,din7,din8,dout);
input clk;
input [7:0] value, din0, din1, din2, din3, din4, din5, din6, din7, din8;
input [2:0] sel;
output reg [7:0] dout;

reg signed  [31:0] t,t1,t2,t3,a,b;

  always @(posedge clk) begin
    case (sel)
		// gray
    	3'b000: begin
				dout = (din0*299  + din1*587  + din2*114)/1000;
		end
		//blur
      	3'b001: begin
			t = 94742*din0 + 118318*din1 + 94742*din2 + 118318*din3 + 147761*din4 + 118318*din5 + 94742*din6 + 118318*din7 + 94742*din8;
			dout = t/1000000;
			t1 = t%1000000;
			if (t1 > 499999)
				dout = dout + 1;
			else dout = dout;
		end
		// sobel
      	3'b010: begin
			t1 = (-1)*din0 + (0)*din1 + (1)*din2 + (-2)*din3 + (0)*din4 + (2)*din5 + (-1)*din6 + (0)*din7 + (1)*din8;
			t2 = (-1)*din0 + (-2)*din1 + (-1)*din2 + (0)*din3 + (0)*din4 + (0)*din5 + (1)*din6 + (2)*din7 + (1)*din8;
			if (t1 < 0) t1 = 0;
			else if (t1 > 255) t1 = 255;
			else t1 = t1;
			if (t2 < 0) t2 = 0;
			else if (t2 > 255) t2 = 255;
			else t2 = t2;
			a = (t1 > t2) ? t1 : t2;
			b = (t1 > t2) ? t2 : t1;
			t3 = a*7/8 + b/2;
			if (a*7%8  > 4 || b % 2 == 1 ) t3 = t3 + 1;
			dout = (t3 > a) ? t3 : a;
		end
		// invert
      	3'b011: begin
			dout = 255 - din0;
		end
		// bright_inc
	  	3'b100: begin
		 	t = din0  + value ;
			if (t > 255) dout = 255;
			else dout = t;
		end
		// bright_dec
	  	3'b101: begin
		 	t = din0  - value ;
			if (t < 0) dout = 0;
			else dout = t;
		end

      default: dout <= 0; 
    endcase
  end

endmodule

