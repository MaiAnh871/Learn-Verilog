`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg [1:0] x;
	reg [1:0] y;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	comparator2bit uut (
		.x(x), 
		.y(y), 
		.z(z)
	);
 
	initial begin
	$dumpfile("test.vcd");
    $dumpvars(0,stimulus);
		// Initialize Inputs
		x = 2'b00;
		y = 2'b00;
 
	#20 x = 2'b01;
	#20 y = 2'b01;
	#20 y = 2'b00;	
	#20 x = 2'b01;	  
	#40 ;
 
	end  
 
		initial begin
		 $monitor("x=",x, " y=",y," z= ",z);
		 end
 
endmodule