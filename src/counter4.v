```verilog
// 4-bit Synchronous Counter
// Active-high synchronous reset and enable

module counter4 (
    input  wire       clk,
    input  wire       rst,
    input  wire       en,
    output reg  [3:0] count
);

    always @(posedge clk) begin
        if (rst)
            count <= 4'b0000;
        else if (en)
            count <= count + 1'b1;
    end

endmodule
```
