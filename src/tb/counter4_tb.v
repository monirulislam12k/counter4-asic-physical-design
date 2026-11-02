```verilog
`timescale 1ns/1ps

module counter4_tb;

    reg clk;
    reg rst;
    reg en;

    wire [3:0] count;

    counter4 dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .count(count)
    );

    // 10 ns clock period
    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin

        $monitor(
            "time=%0t rst=%b en=%b count=%b",
            $time, rst, en, count
        );

        // Test 1: Synchronous reset
        rst = 1'b1;
        en  = 1'b0;

        repeat (2) @(posedge clk);
        #1;

        if (count !== 4'b0000)
            $fatal(1, "Reset test failed");

        // Test 2: Counting
        rst = 1'b0;
        en  = 1'b1;

        repeat (3) @(posedge clk);
        #1;

        if (count !== 4'd3)
            $fatal(1, "Increment test failed");

        // Test 3: Hold
        en = 1'b0;

        repeat (2) @(posedge clk);
        #1;

        if (count !== 4'd3)
            $fatal(1, "Hold test failed");

        // Test 4: Re-enable
        en = 1'b1;

        @(posedge clk);
        #1;

        if (count !== 4'd4)
            $fatal(1, "Re-enable test failed");

        $display("PASS: counter4 testbench completed.");

        $finish;

    end

endmodule
```
