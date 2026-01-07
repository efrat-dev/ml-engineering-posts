---
language: "en"
title: "FAB, Bring-Up, and Post-Silicon - How Does the Chip Come to Life?"
categories:
  - "Chip Design"
tags:
  - "FAB"
  - "Post-Silicon"
series: "Chip Design Journey"
previousPost: "chip-design-journey/12-tapeout.en"
slug: "13-fab-bringup-post-silicon-en"
---

# FAB, Bring-Up, and Post-Silicon - How Does the Chip Come to Life?

We've come a long way:

- Designed the chip
- Wrote RTL
- Did Verification
- Performed Synthesis
- Went through Place & Route
- Approved STA
- Did Tapeout

**And the chip left our hands.**

Now it's at the manufacturing plant - the FAB.

This is the last and most exciting stage:

**Turning the design into actual hardware.**

## What Is a FAB?

FAB = Fabrication Facility
Or: chip manufacturing plant.

These are enormous facilities where:

- Chips are manufactured from pure silicon
- The world's most advanced equipment is used
- Work is done in rooms cleaner than operating rooms
- Billions of dollars are invested in processes

**FAB is where the design becomes actual atoms.**

## How Does the Manufacturing Process Work?

### 1. Creating the Masks

The GDSII sent at Tapeout becomes physical masks.

Each layer in the chip:

- Needs its own mask
- The mask determines where there will be material and where not
- The Photolithography process uses light to create patterns

**A modern chip requires dozens of masks.**

### 2. Creating the Wafer (Silicon Disc)

Take:

- A large silicon disc (300mm diameter in modern processes)
- Place thin layers of materials on it
- Use masks to create patterns
- Repeat the process dozens of times

**In the end, you get a Wafer with hundreds (sometimes thousands) of identical chips.**

### 3. Dicing (Cutting)

After the Wafer is ready:

- Cut it into individual chips
- Test each chip to see if it's functional
- Failed chips are discarded
- Functional chips move to the next stage

**Yield - how many functional chips there are - is critical for costs.**

### 4. Packaging

The small chip:

- Receives an external casing
- Is connected to pins allowing connection to a system
- Is tested again
- And packaged for shipping

**This is the final chip that arrives to customers.**

## How Long Does the Manufacturing Process Take?

- **Old processes (28nm and above):** About a month
- **Advanced processes (7nm, 5nm, 3nm):** 2-3 months
- **Especially complex processes:** Up to 4 months

**After Tapeout, you wait months until receiving the first chips.**

## First Silicon - The First Samples

After all the waiting, the first samples arrive:

**First Silicon**
The first chips manufactured from the factory.

This is an exciting and stressful moment simultaneously:

- Will the chip even work?
- Are there bugs we missed?
- Are the timings correct?
- Are the performance metrics as planned?

**In most cases - there are some issues.**

## Bring-Up - First Power-On

Bring-Up is the process where:

1. Connect the chip for the first time
2. Power it on
3. Check if it's "alive"
4. Run test software
5. Try different interfaces
6. Ensure it responds

**This is a moment of truth.**

If the chip doesn't work at all - there's a big problem.
If it works partially - need to find what's wrong.
If it works as planned - it's great joy.

## Post-Silicon Validation - Testing on the Actual Chip

After Bring-Up passed:

Deep testing begins:

- **Functional tests:** Does each unit work?
- **Performance tests:** Is the chip as fast as planned?
- **Power consumption tests:** Does it consume energy as expected?
- **Reliability tests:** Is it stable over time?
- **Temperature tests:** How does it behave at high heat?

**This is the final Validation stage.**

## What Happens If There Are Bugs?

Usually bugs are discovered at the Post-Silicon stage.

There are several options:

### 1. Software Fix
If the bug can be worked around in code - do a Workaround.

### 2. Firmware Fix
Sometimes things can be fixed at the microcode or settings level.

### 3. Respin - Another Tapeout
If the bug is severe - need to do a new Tapeout.

**It's expensive and takes time, but sometimes there's no choice.**

### 4. Release Anyway
If the bug doesn't affect most users - sometimes the chip is released with notes.

## What Happens After the Chip Works?

After all tests pass:

1. Mass production begins
2. The chip goes to market
3. Is integrated into products
4. Reaches customers

**And the chip begins its real life.**

## An Analogy to Clear Things Up

Think about launching a rocket:

**FAB:** Building the rocket at the factory.

**First Silicon:** The rocket arrived at the launch site.

**Bring-Up:** Engine ignition for the first time.

**Post-Silicon:** Checking all systems work before actual launch.

**Mass production:** Launching rockets regularly.

## Summary

FAB, Bring-Up, and Post-Silicon are:

- The physical manufacturing process of the chip
- The moment when the design becomes actual hardware
- First power-on and final testing
- Discovering bugs not caught in simulation
- Final confirmation the chip is ready for market

**This is the last stage in the long journey of creating a chip.**

From initial idea, through RTL, Synthesis, Place & Route, Tapeout -
to an actual physical chip working in billions of devices worldwide.

---

**This is the "Chip Design Journey" series - a complete journey from idea to manufacturing. In the summary post, we'll review all stages together and see the complete picture.**
