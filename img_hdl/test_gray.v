`timescale 1ns/1ps

module test_gray;

reg clk;
reg [7:0] red_in, green_in, blue_in;
wire [7:0] gray_out;
reg [7:0] ram [0:360000];
reg [7:0] ramo [0:119999];

always #5 clk =~clk;
integer i,j,a;

gray t( .clk(clk),
        .red_in(red_in),
        .green_in(green_in),
        .blue_in(blue_in),
        .gray_out(gray_out)
);

initial begin
    clk = 0;
    red_in   = 0;
    green_in = 0;
    blue_in  = 0;
    $readmemh("txt/RGB.txt", ram);
    a=0;
    #5;
    for(i=0;i<400;i=i+1) begin
	     for(j=0;j<900;j=j+3) begin
	      red_in   = ram[900*i + j];
	      green_in = ram[900*i + j + 1];
	      blue_in  = ram[900*i + j + 2];
	      #5;
	      ramo[a] = gray_out;
	      a = a+1;
	      #5;
        end
      end

	    $writememh("txt/out_gray.txt", ramo);
  end
  
endmodule