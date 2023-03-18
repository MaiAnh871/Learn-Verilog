module stimulus;
    // Define inputs
    reg x;
    reg y;

    // Instantiate gate module
    gate g(
        .x(x),
        .y(y),
        .z(z)
    );

    // Define output
    wire z;

    initial begin
        // Initialize Inputs
        x = 0;
        y = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Apply inputs and display output
        #50 x = 1; $display("x=%b, y=%b, z=%b", x, y, z);
        #60 y = 1; $display("x=%b, y=%b, z=%b", x, y, z);
        #70 y = 0; $display("x=%b, y=%b, z=%b", x, y, z);
        #80 x = 0; $display("x=%b, y=%b, z=%b", x, y, z);

        // Wait for simulation to finish
        #100 $finish;
    end
endmodule
