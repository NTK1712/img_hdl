`timescale 1ns/1ps

module test_image;
  reg clk;
  reg [2:0] sel;
  reg [7:0] value,din0, din1, din2,din3,din4,din5,din6,din7,din8;
  wire [7:0] dout;

  reg [7:0] ram [0:359999];
  reg [7:0] rama [0:359999];
  reg [7:0] ramt [0:364211];

  reg [7:0] rami [0:119999];
  reg [7:0] ramo [0:119999];
  
  always #5 clk = ~clk;
  integer i,j,a;

  image m(
    .clk(clk),
	.sel(sel),
	.value(value),
    .din0(din0),	.din1(din1),	.din2(din2),
    .din3(din3),	.din4(din4),	.din5(din5),    
    .din6(din6),	.din7(din7),	.din8(din8),
    .dout(dout)
  );
  

  initial begin
    clk = 0;
	sel = 0;
    din0 = 0;	din1 = 0;	din2 = 0;
    din3 = 0;	din4 = 0;	din5 = 0;
	din6 = 0;	din7 = 0;	din8 = 0;

    $readmemh("txt/RGB1.txt", ram);

	#5; 
	sel = 2;
	value = 100;
	case(sel)
		//
		0 : begin
    		a = 0;
    		for(i=0;i<400;i=i+1) begin
	     		for(j=0;j<900;j=j+3) begin
	      		din0 = ram[900*i + j];
	      		din1 = ram[900*i + j + 1];
	      		din2 = ram[900*i + j + 2];
	      		#5;
	      		ramo[a] = dout;
	      		a = a+1;
	      		#5;
        		end
    		end
			$writememh("txt/output.txt", ramo);
		end
		//
		1 : begin
			a = 0;
			for(i=0;i<402;i=i+1) begin
				for(j=0;j<906;j=j+1) begin
					if( 0<i && i<401 && 2<j && j<903)
						ramt[906*i + j] = ram[900*(i-1) + (j-3)];
					else
						ramt[906*i + j] = 100;
				end
			end

			a = 0;
			for(i=0;i<400;i=i+1) begin
				for(j=0;j<900;j=j+1) begin
					din0 = ramt[906*i + j];
					din1 = ramt[906*i + j + 3];
					din2 = ramt[906*i + j + 6];
					din3 = ramt[906*(i+1) + j];
					din4 = ramt[906*(i+1) + j + 3];
					din5 = ramt[906*(i+1) + j + 6];
					din6 = ramt[906*(i+2) + j];
					din7 = ramt[906*(i+2) + j + 3];
					din8 = ramt[906*(i+2) + j + 6];
					#5;
					rama[a] = dout;	
					a = a+1;			
					#5; 
				end
			end
			$writememh("txt/output.txt", rama);
			$finish;		
		end
		//
		2 : begin
			sel = 1;
    		a = 0;
    		for(i=0;i<400;i=i+1) begin
	     		for(j=0;j<900;j=j+3) begin
	      		din0 = ram[900*i + j];
	      		din1 = ram[900*i + j + 1];
	      		din2 = ram[900*i + j + 2];
	      		#5;
	      		ramo[a] = dout;
	      		a = a+1;
	      		#5;
        		end
    		end
			$writememh("txt/out_gray.txt", ramo);

			sel = 2;
		   	a = 0;
			$readmemh("txt/out_gray.txt", rami);
			for(i=0;i<402;i=i+1) begin
				for(j=0;j<302;j=j+1) begin
					if( 0<i && i<401 && 0<j && j<301)
						ramt[302*i + j] = rami[300*(i-1) + (j-1)];
					else
						ramt[302*i + j] = 100;
				end
			end
			#5;
			for(i=0;i<400;i=i+1) begin
				for(j=0;j<300;j=j+1) begin
					din0 = ramt[302*i + j];
					din1 = ramt[302*i + j + 1];
					din2 = ramt[302*i + j + 2];
					din3 = ramt[302*(i+1) + j];
					din4 = ramt[302*(i+1) + j + 1];
					din5 = ramt[302*(i+1) + j + 2];
					din6 = ramt[302*(i+2) + j];
					din7 = ramt[302*(i+2) + j + 1];
					din8 = ramt[302*(i+2) + j + 2];
					#5;
					ramo[a] = dout;	
					a = a+1;			
					#5; 
				end
			end
			$writememh("txt/output.txt", ramo);
			$finish;
		end
		//
		3 : begin
    		a = 0;
    		for(i=0;i<360000;i=i+1) begin
	      		din0 = ram[i];
	      		#5;
	      		rama[a] = dout;
	      		a = a+1;
	      		#5;
    		end
			$writememh("txt/output.txt", rama);
			$finish;
		end
		//
		4 : begin
			a = 0;
    		for(i=0;i<360000;i=i+1) begin
	      		din0 = ram[i];
	      		#5;
	      		rama[a] = dout;
	      		a = a+1;
	      		#5;
    		end
			$writememh("txt/output.txt", rama);
			$finish;
		end
		//
		5 : begin
			a = 0;
    		for(i=0;i<360000;i=i+1) begin
	      		din0 = ram[i];
	      		#5;
	      		rama[a] = dout;
	      		a = a+1;
	      		#5;
    		end
			$writememh("txt/output.txt", rama);
			$finish;
		end

		default: $finish;
	
	endcase

 end

endmodule

