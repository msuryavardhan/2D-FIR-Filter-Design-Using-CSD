module tb_srb;

	// Inputs
	reg clk;
	reg rst;
	reg signed [7:0] x1;

	// Outputs
	wire signed [7:0] yout;
	

	// Instantiate the Unit Under Test (UUT)
	srb uut (.clk(clk),.rst(rst),.x1(x1),.yout(yout));

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
		
		end
          initial  #250 $stop ;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	
      
endmodule