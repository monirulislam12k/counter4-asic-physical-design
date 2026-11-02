# Counter4 — RTL-to-GDSII ASIC Physical Design

A 4-bit synchronous counter implemented in Verilog and taken through an RTL-to-GDSII physical design flow using **LibreLane** and the **SKY130 PDK**.

This is my first successful ASIC physical design implementation and an important step in my journey toward semiconductor engineering and VLSI design.

## Project Overview

The design is a 4-bit synchronous up-counter with:

- Clock input
- Active-high synchronous reset
- Enable control
- 4-bit count output

### How It Works

1. When `rst = 1`, the counter resets to `0000` at the rising clock edge.
2. When `en = 1`, the counter increments by one.
3. When `en = 0`, the counter holds its previous value.
4. The counter wraps from `1111` to `0000`.

## Design Specifications

| Parameter | Value |
|---|---|
| Design Name | Counter4 |
| Design Type | Synchronous Up-Counter |
| Counter Width | 4-bit |
| HDL | Verilog |
| Reset | Synchronous, Active High |
| Enable | Active High |
| Clock Edge | Rising Edge |
| PDK | SKY130 |
| Physical Design Tool | LibreLane 3.0.17 |
| Layout Viewer | KLayout |

## RTL-to-GDSII Design Flow

The design was processed through the following ASIC implementation stages:

1. RTL preparation
2. Logic synthesis
3. Floorplanning
4. Standard-cell placement
5. Clock-tree synthesis
6. Routing
7. Physical verification
8. GDSII generation

## Physical Verification Results

The completed LibreLane run reported:

| Check | Result |
|---|---|
| Design Rule Check (DRC) | Passed |
| Layout Versus Schematic (LVS) | Passed |
| Antenna Check | Passed |
| GDSII Generation | Successful |

These results describe the reported physical-design run. They do not indicate that a physical chip has been fabricated or taped out.

## Final Layout

The generated GDSII layout was opened and inspected using KLayout.

Add your own screenshot here:

`![Counter4 GDSII Layout](images/counter4_layout.png)`

## Tools and Technologies

- Verilog HDL
- LibreLane
- SKY130 PDK
- Yosys
- OpenROAD
- KLayout
- Linux / WSL
- Docker

## What I Learned

- Writing synthesizable Verilog RTL
- Understanding synchronous reset and enable signals
- Learning the RTL-to-GDSII ASIC implementation flow
- Generating and inspecting GDSII layouts
- Understanding basic physical verification reports

## Future Improvements

- Add and verify a complete RTL testbench
- Analyze timing and area reports
- Explore standard-cell placement and routing
- Experiment with more complex digital circuits

## Author

**Monirul Islam**

Diploma in Electronics Engineering  
Rajshahi Polytechnic Institute, Bangladesh

GitHub: [@monirulislam12k](https://github.com/monirulislam12k)

---

*An educational project documenting my journey into digital design, VLSI, and semiconductor engineering.*
