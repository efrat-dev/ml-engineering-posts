---
language: "en"
title: "What is Place & Route - And How Do You Position Gates on a Chip and Connect Them?"
categories:
  - "Chip Design"
tags:
  - "Place & Route"
  - "Backend"
series: "Chip Design Journey"
previousPost: "chip-design-journey/8-synthesis.en"
slug: "9-place-and-route-en"
---

# What is Place & Route - And How Do You Position Gates on a Chip and Connect Them?

In previous posts, we reached the stage where RTL was translated to a Netlist.
The Netlist is a large list of:

- Gates (AND / OR / NOT / FF…)
- Connections between them
- Complete logical structure

But we still don't have an actual chip.
No transistors, no wires, no physical location.

To turn the design into reality, we enter a central Backend stage:

**Place & Route**
Or in short: P&R.

## Why Do We Even Need Place & Route?

The Netlist says who's connected to whom.
But it doesn't say:

- Where each gate is physically located on the chip
- How the wires run between them
- How to avoid collisions
- How to meet timings
- How to minimize energy consumption

**This is exactly why the P&R process was created.**

You can think of it like building a city:

- Synthesis determined which buildings exist
- Place & Route determines where each building will stand
- And where the roads will run between them

## Stage 1: Placement - Positioning Gates on the Chip

There are millions (and sometimes billions) of gates, and they need to be placed:

- Efficiently
- So nearby blocks communicate quickly
- Without creating overcrowding
- Without wasting space
- While meeting performance conditions

**Placement is a highly automated process - but also very complex.**

In each iteration, the tool moves blocks slightly forward/backward and calculates:

- Did timing improve?
- Is space utilized correctly?
- Are we meeting the goal?

The process repeats many times until reaching optimal placement.

## Stage 2: Routing - Drawing "Actual Wires"

After knowing where each gate will stand, they need to be connected with wires:

- Horizontal connections
- Vertical connections
- Lines at different metal levels
- Different widths, heights, and densities

**Routing is like drawing roads between all the houses in a city:**

- Without colliding
- Without creating congestion
- Without making wires too long (because that will hurt timing)

Quality routing maintains:

- Hardware speed
- Signal stability
- Low power consumption

## Why Is Place & Route Such a Difficult Process?

Because there are millions of parameters to balance:

- Area
- Timing
- Heat
- Density
- Voltage
- Meeting manufacturing constraints
- Preventing electrical interference (Noise, Crosstalk)

**If one line comes out slightly too long - an entire path might not work on time.**

**If one block is positioned incorrectly - the entire chip's timing might break.**

## What Is the Result of Place & Route?

The final output is:

**Layout**
A physical drawing at transistor resolution.

It includes:

- All transistors
- All gates
- All metal layers
- All connections
- The entire chip structure at the physical level

**This is the file sent to the factory (FAB) for manufacturing.**

In other words:

**Place & Route is the stage where the chip transforms from a drawing - to an actual map.**

## An Analogy to Clear Things Up

Think about city planning:

**Frontend** = We decided there will be houses, stores, schools.

**Synthesis** = We decided which materials to build everything from.

**Place & Route** = We positioned each building in the exact location and drew all the roads.

Now we have a **complete city map** - ready for actual construction.

## Summary

Place & Route is:

- A central Backend stage, where:
  - The Netlist gets physical form
  - Gates receive positions
  - Wires receive routes
  - The chip's complete layout is created
  - And the system is ready for the final stage: manufacturing

**This is the stage where the chip truly "is born".**

---

**This is the "Chip Design Journey" series - an in-depth journey into the world of chip design. In the continuation, we'll learn about STA (Static Timing Analysis), Simulation, Tapeout, and more fascinating stages until actual manufacturing.**
