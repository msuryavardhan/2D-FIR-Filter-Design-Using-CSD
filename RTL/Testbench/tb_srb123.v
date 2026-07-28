


module tb_srb123();




	// Inputs
	reg clk;
	reg rst;
	reg  [7:0] x;

	// Outputs
	wire  [7:0] y1;
	

	// Instantiate the Unit Under Test (UUT)
	srb uut (.clk(clk),.x(x),.y1(y1));


	initial begin
		// Initialize Inputs
		clk = 1'b1;
		end
		always begin #10;
		clk=~clk;
		end
		initial begin
		rst=1'b0;
		
		end
	initial 	
	begin
		x = 8'd4;
		#10;
		x = 8'd12;
		#10;
		x = 8'd45;
		#10;
		
		
		end
          initial  #75000 $stop ;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	
      

endmodule
