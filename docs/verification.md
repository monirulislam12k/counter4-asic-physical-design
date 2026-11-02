# Verification

## RTL Verification

The repository includes a Verilog testbench at:

`tb/counter4_tb.v`

The testbench is designed to check:

1. Synchronous reset
2. Increment operation
3. Hold operation
4. Re-enable operation

Run the testbench in a Verilog simulator before reporting its result.

## Physical Design Verification

The completed LibreLane run reported:

- DRC: Passed
- LVS: Passed
- Antenna Check: Passed

The original LibreLane reports should be retained as evidence of these results.

Physical verification results do not prove that a physical chip has been manufactured.
