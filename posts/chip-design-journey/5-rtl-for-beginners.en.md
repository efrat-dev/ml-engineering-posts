---
language: "en"
title: "RTL for Beginners - What is Verilog/VHDL?"
categories:
  - "Chip Design"
tags:
  - "RTL"
  - "Verilog"
series: "Chip Design Journey"
previousPost: "chip-design-journey/4-what-is-frontend.en"
nextPost: "chip-design-journey/6-chip-architecture.en"
slug: "5-rtl-for-beginners-en"
---

# RTL for Beginners - What is Verilog/VHDL?

In previous posts, we talked about RTL as a "language for describing hardware".
Now it's time to understand what this really means -
and to meet the main languages: **Verilog** and **VHDL**.

## What is Verilog?

Verilog is a Hardware Description Language (HDL) created in 1984.

It allows engineers to describe:

- How data flows in a circuit
- What happens at each clock cycle
- How units respond to inputs
- What the connections between different components are

Verilog **doesn't run** like Python or C.
It **describes** a logical structure that will become a circuit.

## What is VHDL?

VHDL (VHSIC Hardware Description Language) is a similar language, developed in the 1980s by the U.S. military.

It's more verbose, more detailed, and less similar to regular programming languages.

Today, **Verilog** and **SystemVerilog** are more common in the industry, especially in AI and advanced chips.

## Why is RTL a "Description" and Not "Running Code"?

Because in hardware:

### Everything Happens in Parallel
Unlike software that executes one command after another,
in hardware **all blocks work simultaneously**.

### Everything Depends on the Clock
The chip progresses in clock cycles.
Each cycle = a new step.

RTL describes what happens **in each clock cycle**.

### There's No "Execution" - There's Translation to Hardware
RTL doesn't run on a processor.
It's **translated** to gates, transistors, and actual paths.

## What Does Verilog Actually Look Like?

Here's a very simple example:

```verilog
module adder (
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum
);
    assign sum = a + b;
endmodule
```

**What does this say?**

- `module adder` - this is a block named "adder"
- `input [7:0] a, b` - two 8-bit inputs
- `output [7:0] sum` - an 8-bit output
- `assign sum = a + b` - add a and b and put the result in sum

This is **not a function** that runs.
This is a **description** of a circuit that adds two numbers.

## Basic Concepts in RTL

### Registers
Places that hold values between clock cycles.

Example:
```verilog
always @(posedge clk) begin
    counter <= counter + 1;
end
```

**What does this mean?**
At every rising clock edge (posedge clk) - add 1 to counter.

### Always Blocks
Description of what happens in certain situations:

- `always @(posedge clk)` - at every rising clock edge
- `always @(*)` - at every change of any signal

### Assign
Direct connection without a register:

```verilog
assign output_signal = input_signal & enable;
```

This means: output_signal will always equal the AND of input_signal and enable.

## What's the Difference Between Verilog and SystemVerilog?

**SystemVerilog** is a modern extension of Verilog:

- Richer syntax
- UVM support (for testing)
- More advanced tools
- Very common in new projects

But the principle is the same: **describing hardware behavior.**

## Why Learn RTL?

Because it's the language used to:

- Design custom chips
- Build AI accelerators
- Develop dedicated computing units
- Work on SoC, FPGA, ASIC

**Without RTL - there's no hardware design.**

## A Simple Analogy

Think of Verilog as an **engineering blueprint**.

When an architect designs a building, they don't build the building itself -
they draw a plan that shows:

- Where each wall is
- Where each room is
- How everything connects

Verilog is the blueprint of the chip.
It **describes** what needs to be -
and later, automated tools **build** it.

## Summary

RTL (Verilog/VHDL) is:

- A hardware description language
- Not running code, but a description of circuits
- Based on registers, clocks, and parallel logic
- The foundation for all modern chip design

This is the language hardware engineers write their vision in -
before it becomes actual silicon.

---

**In the next post, we'll talk about chip architecture - the stage where you decide what the chip will contain, how the units will communicate, and what the overall system will be.**
