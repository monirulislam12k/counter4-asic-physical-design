# Counter4 Architecture

## Overview

Counter4 is a 4-bit modulo-16 synchronous up-counter.

## Input and Output Ports

| Signal | Direction | Width | Description |
|---|---|---|---|
| clk | Input | 1 | Clock signal |
| rst | Input | 1 | Active-high synchronous reset |
| en | Input | 1 | Counter enable |
| count | Output | 4 | Counter output |

## Operating Conditions

| Reset | Enable | Operation |
|---|---|---|
| 1 | X | Reset to 0000 |
| 0 | 1 | Increment by one |
| 0 | 0 | Hold previous value |

## Counter Sequence

```text
0000
0001
0010
0011
0100
0101
0110
0111
1000
1001
1010
1011
1100
1101
1110
1111
0000
```

The counter automatically wraps after reaching 15.
