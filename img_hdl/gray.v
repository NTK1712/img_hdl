module gray(clk,red_in,green_in,blue_in,gray_out);

input clk;
input [7:0] red_in,blue_in,green_in;
output reg [7:0] gray_out;


always @(posedge clk)
begin

	gray_out <= (red_in*299  + green_in*587  + blue_in*114)/1000;

end

endmodule
