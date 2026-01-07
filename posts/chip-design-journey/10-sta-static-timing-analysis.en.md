---
language: "en"
title: "What is STA - Static Timing Analysis - And How Do You Ensure the Chip Will Work at the Right Frequency?"
categories:
  - "Chip Design"
tags:
  - "STA"
  - "Timing"
series: "Chip Design Journey"
previousPost: "chip-design-journey/9-place-and-route.en"
nextPost: "chip-design-journey/11-simulation-fpga-emulation.en"
slug: "10-sta-static-timing-analysis-en"
---

# What is STA - Static Timing Analysis - And How Do You Ensure the Chip Will Work at the Right Frequency?

So far we've covered:

- Synthesis
- Place & Route
- Layout creation

But there's one critical problem we haven't solved yet:

**How do you ensure all signals arrive on time?**

If one gate received a signal too late - all the hardware might not work.
If the timings aren't correct - the chip will fail.

This is exactly the job of:

**STA - Static Timing Analysis**
Or: static timing analysis.

**This is the stage where you ensure the chip can operate at the planned clock frequency.**

## Why Is Timing So Critical?

Modern chips work at insane speeds:

- 1GHz = one thousand million operations per second
- 5GHz = five thousand million operations per second

In each clock cycle:

1. A signal must leave one place
2. Pass through gates
3. Pass through wires
4. Reach the destination
5. Be captured in a flip-flop

**All this must happen in a very short time - sometimes less than a nanosecond.**

If something takes more time - the chip won't work.

## What's the Problem with Time?

Every component in the chip takes time:

- AND gate - takes time to compute
- Wire - takes time for signal to pass through
- Flip-flop - takes time to capture a new value

**This time is called: Delay.**

If the sum of all Delays is too large - the chip won't meet the clock frequency.

## What Are Setup Time and Hold Time?

For a flip-flop to capture the correct value, the signal must arrive:

### Setup Time
The signal must arrive **before** the clock edge by a certain time.

If it arrives too late - the value won't be captured.

### Hold Time
The signal must remain stable **after** the clock edge for a certain time.

If it changes too quickly - the value might be wrong.

**STA checks both these conditions on every path in the chip.**

## How Does STA Work?

STA takes:

- The Netlist
- The Layout
- The constraints on clock frequency
- The specification of each gate (how much time it takes)

And runs analysis:

1. Selects every path in the chip
2. Sums all Delays in the path
3. Checks if it meets Setup and Hold
4. Calculates the margin (Slack) - did we arrive on time or not

If Slack is positive → path is valid.
If Slack is negative → **problem! The signal won't arrive on time.**

## What Happens If There's a Timing Violation?

If STA discovers a path that doesn't meet timing:

1. Need to change the design
2. Redo Placement or Routing
3. Add Buffers (amplifiers) along the way
4. Move blocks closer together
5. Change the constraints

**This is an iterative process.**

Sometimes multiple rounds are done of:

- Synthesis
- Place & Route
- STA
- Fixes

Until reaching a design that works at the required frequency.

## Why Is It Called "Static"?

**Static = without dynamic execution.**

STA doesn't run simulation.
It doesn't activate the chip.

It only:

- Measures the paths
- Calculates the times
- Checks if there's enough time for each signal

**It's very fast - but also complete.**

STA checks **all paths**, not just some of them.

## An Analogy to Clear Things Up

Think about a train system:

**Setup Time:**
The train must arrive at the station before releasing the passengers.

**Hold Time:**
The doors must remain open long enough for passengers to get off.

**STA:**
Checks that every train on all lines arrives on time - without checking actual travel.

## Why Is STA So Important?

Because:

- Without it, you can't know if the chip will work at the required frequency
- It discovers problems before manufacturing
- It ensures the design is ready for the next stage
- It prevents expensive failures

**STA is the "stamp of approval" that timings are correct.**

## What Is the Result of STA?

At the end of the process, you get a report containing:

- List of all paths
- Critical paths (slowest ones)
- Timing violations (if any)
- Recommendations for improvement
- Confirmation that the chip will work at the required frequency

**Only after STA passes successfully - can you advance to the next stage.**

## Where Do We Go From Here?

After STA passes:

1. Run additional simulations
2. Test the design on FPGA
3. Perform chip emulation
4. And advance toward Tapeout

In other words:

**STA is the stage that ensures the chip is not only logically correct - but will also work at the required speed.**

## Summary

STA - Static Timing Analysis is:

- Timing analysis of all paths in the chip
- Checking that all signals arrive on time
- Preventing Setup and Hold violations
- Confirmation that the chip will work at the required clock frequency
- A critical process before moving to manufacturing

**This is the stage that ensures the chip will be fast enough.**

---

**In the next post, we'll learn about Simulation, FPGA, and Emulation - tools that allow testing the chip before manufacturing, and seeing it "run" in the real world.**
