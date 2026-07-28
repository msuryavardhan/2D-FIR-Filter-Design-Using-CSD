module tb_major;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] x1;

	// Outputs
	wire [7:0] yout;
	

	// Instantiate the Unit Under Test (UUT)
	final uut (.x1(x1),.rst(rst),.clk(clk),.yout(yout));

	initial begin
		// Initialize Inputs
		clk = 1'b1;
		end
		always begin #10;
		clk=~clk;
		end
		initial begin
		rst=1'b1;
		#20; rst=1'b0;
		end
	initial 	
	begin
		x1 = 8'd4;
		#10;
		x1 = 8'd12;
		#20;
		x1 = 8'd45;
		#30;
		x1 = 8'd85;
		#40
		x1 = 8'd0;
		#50;
		x1 = 8'd5;
		#60;
		x1 = 8'd7;
		#70;
		x1 = 8'd15;
		#80;
		end
          initial  #300 $stop ;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	
      
endmodule