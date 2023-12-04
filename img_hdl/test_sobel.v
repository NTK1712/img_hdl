`timescale 1ns/1ps

module test_sobel;

  reg clk;
  reg [7:0] din0, din1, din2,din3,din4,din5,din6,din7,din8;
  wire [7:0] dout;
  reg [7:0] ram [0:118604];
  reg [7:0] ramo [0:117215];
  always #5 clk = ~clk;
  integer i,j,a;
  sobel t(
    .clk(clk),
    .din0(din0),
    .din1(din1),
    .din2(din2),
    .din3(din3),
    .din4(din4),
    .din5(din5),    
    .din6(din6),
    .din7(din7),
    .din8(din8),
    .dout(dout)
  );
  


  initial begin
    clk = 0;
    din0 = 0;
    din1 = 0;
    din2 = 0;
    din0 = 0;
    din1 = 0;
    din2 = 0;
    din3 = 0;
    din4 = 0;
    din5 = 0;
    din6 = 0;
    din7 = 0;
    din8 = 0;
    $readmemh("txt/out_blur.txt", ram);
    a=0;
    #5;
    for(i=0;i<396;i=i+1) begin
	     for(j=0;j<296;j=j+1) begin
	      din0 = ram[298*i + j];
	      din1 = ram[298*i + j + 1];
	      din2 = ram[298*i + j + 2];
         din3 = ram[298*(i+1) + j];
	      din4 = ram[298*(i+1) + j + 1];
	      din5 = ram[298*(i+1) + j + 2];
	      din6 = ram[298*(i+2) + j];
	      din7 = ram[298*(i+2) + j + 1];
	      din8 = ram[298*(i+2) + j + 2];
	      
			 #5;
         ramo[a] = dout;	
			a = a+1;			
	      #5; 
        end
      end

	    $writememh("txt/out_sobel.txt", ramo);
     
  end

 

endmodule

