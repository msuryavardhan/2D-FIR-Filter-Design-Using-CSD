module tb_pro;


	// Inputs
	reg clk;
	reg rst;
	reg signed [7:0] x1;

	// Outputs
	wire signed [7:0] yout;
	

	// Instantiate the Unit Under Test (UUT)
	final uut (.clk(clk),.rst(rst),.x1(x1),.yout(yout));

	initial begin
		// Initialize Inputs
		clk = 1'b1;
		end
		always begin #10;
		clk=~clk;
		end
		initial begin
		rst=1'b1;
		#10 rst=1'b0;
		end
	initial 	
	begin
		x1 = 8'd1;
		#10;
		x1 = 8'd12;
		#10;
		x1 = 8'd45;
		#10;
		x1 = 8'd25;
		#60;
		x1 = 8'd70;
		#10;
		x1= 8'h5a;
		#10;
		x1 = 8'd35;
		#10;
		x1 = 8'd815;
		#60;
		x1 = 8'd90;
		#10;
		x1= 16'h5a;
		#10;
	
		
		x1 = 8'd35;
		#10;
		x1 = 8'd55;
		#60;
		x1 = 8'd190;
		#609;
	end
          initial  #10000000000 $stop ;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	
      
endmodule