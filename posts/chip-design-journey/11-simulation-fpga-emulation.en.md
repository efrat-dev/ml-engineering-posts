---
language: "en"
title: "Simulation, FPGA, Emulation - How Do You Test a Chip Before Manufacturing?"
categories:
  - "Chip Design"
tags:
  - "Simulation"
  - "FPGA"
series: "Chip Design Journey"
previousPost: "chip-design-journey/10-sta-static-timing-analysis.en"
nextPost: "chip-design-journey/12-tapeout.en"
slug: "11-simulation-fpga-emulation-en"
---

# Simulation, FPGA, Emulation - How Do You Test a Chip Before Manufacturing?

In previous posts, we learned about:

- Verification
- Synthesis
- Place & Route
- STA

But there's still a big question:

**How do you really know the chip will work before manufacturing it?**

Because after the chip is manufactured:

- It can't be changed
- Fixing costs a fortune
- If there's a major bug - the entire project might fail

Therefore, before manufacturing, you need to test the chip in every possible way.

And there are three main tools for this:

1. **Simulation**
2. **FPGA - Testing on programmable hardware**
3. **Emulation - Full emulation**

## 1. Simulation

This is the most basic tool.

### What Is Simulation?

Simulation is a process where:

- You take the RTL
- You take the Testbench
- You run a "simulator"
- You see how signals change over time

**It's a virtual execution of the chip.**

### What Do You See in Simulation?

- How signals pass between modules
- What the values are at any given moment
- Where bugs get stuck
- How the system responds to different inputs

### Why Is Simulation Important?

Because it's:

- Cheap
- Relatively fast
- Allows testing countless scenarios
- Helps identify bugs early

But it has one big problem:

**It's very slow compared to actual hardware.**

Simulating one second of chip operation can take hours (and sometimes days) on a computer.

So when you want to test more complex things - you move to more advanced tools.

## 2. FPGA - Field Programmable Gate Array

FPGA is a special chip that can be reprogrammed.

### What Is an FPGA?

FPGA is physical hardware that contains:

- Millions of logic gates
- Programmable blocks
- Flexible connections

**You can "load" your design into it - and it will behave like your chip.**

### Why FPGA?

Because:

- It's a million times faster than simulation
- Works in real-time
- Allows testing the chip on an actual system
- Allows running actual software on it

**FPGA is a "beta version" of the chip.**

### How Does It Work?

1. Take the RTL or Netlist
2. "Burn" it to the FPGA
3. Connect the FPGA to a system
4. Run actual code on it
5. Test system behavior

**FPGA gives enormous confidence before moving to manufacturing.**

### What Are the Drawbacks of FPGA?

- It's not identical to the final chip
- It's slower than the actual chip
- It doesn't support all features
- Sometimes it's large and expensive

But despite everything - it's a critical tool in the development process.

## 3. Emulation

Emulation is an intermediate stage between Simulation and FPGA.

### What Is Emulation?

Emulation is a large hardware system that simulates the chip:

- Using arrays of FPGAs
- Or special hardware
- That allows running the entire chip in real-time

**It's like a "testing lab" that simulates the chip at high speed.**

### Why Emulation?

Because:

- Faster than simulation (thousands of times and more)
- Allows testing complex scenarios
- Allows running a complete operating system on the chip
- Allows testing integration with other components

**Emulation is suitable for large and complex chips.**

### How Does It Work?

1. Upload the design to the Emulation system
2. Connect it to a complete system
3. Run actual software
4. Test interaction with other components
5. Verify everything works as expected

**Emulation is the closest test to an actual chip.**

## When Do You Use Each Tool?

| Stage | Tool | Speed | Accuracy | Use |
|-------|------|-------|----------|-----|
| **Early development** | Simulation | Very slow | High | Logic testing |
| **Integration testing** | FPGA | Fast | Medium | System testing |
| **Final testing** | Emulation | Very fast | Very high | Complete testing |
| **Manufacturing** | Actual chip | Fastest | 100% | Final product |

## An Analogy to Clear Things Up

Think about car development:

**Simulation:**
Testing on computer - how the engine will behave, how the brakes will work.

**FPGA:**
Building a simple prototype - a car you can drive, but not perfect.

**Emulation:**
Building a complete prototype - a car almost identical to the final one.

**Actual chip:**
The final car that goes to market.

## Summary

Before manufacturing a chip, it's tested in three ways:

1. **Simulation** - Virtual execution, slow but accurate
2. **FPGA** - Testing on actual hardware, fast and convenient
3. **Emulation** - Complete testing at high speed

**Only after all these tests pass successfully - you proceed to Tapeout.**

Each of these tools is important at a different stage, and together they ensure the chip will be correct.

---

**In the next post, we'll learn about Tapeout - the exciting stage where the design is sent to manufacturing, and what happens afterward until you get an actual chip.**
