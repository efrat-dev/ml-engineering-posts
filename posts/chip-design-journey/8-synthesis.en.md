---
language: "en"
title: "What is Synthesis - And How Does RTL Become Actual Gates in a Chip?"
categories:
  - "Chip Design"
tags:
  - "Synthesis"
  - "Backend"
series: "Chip Design Journey"
previousPost: "chip-design-journey/7-verification.en"
nextPost: "chip-design-journey/9-place-and-route.en"
slug: "8-synthesis-en"
---

# What is Synthesis - And How Does RTL Become Actual Gates in a Chip?

So far we've learned:

- What a chip is
- What an SoC is
- What RTL is
- What Verification is

At this stage, we have a valid logical description of the hardware - but it's still just text in a language like Verilog or SystemVerilog.

For the chip to become something real, we must go through another stage:

**Synthesis**
Or: translation of RTL to physical logic.

**This is the first stage where the hardware approaches reality.**

## What Actually Happens in Synthesis?

The process can be described as follows:

1. Take the RTL
2. Add timing and power consumption constraints
3. Run the tools
4. Get a **Netlist** - a list of actual gates:
   - AND, OR, NOT, MUX, flip-flops, and more

**This is not code - this is actual hardware at the logical level.**

The Netlist is already a structure that later becomes transistors in Backend.

## Why Can't We Directly Manufacture a Chip from RTL?

RTL is a behavioral description.
It describes **what should happen** - not how to build it physically.

**Example:**

In RTL you can write:

```verilog
if (a > b) out = a;
else out = b;
```

But in an actual chip, there's no "if".
There are:

- Multiplexers
- Comparators
- Gates
- Paths

**Synthesis takes easy-to-understand commands - and turns them into an actual physical circuit.**

## What Decisions Are Made During Synthesis?

Deep beneath the surface, the process decides:

- Which gates to use
- What the width and depth of paths will be
- How to balance speed and power consumption
- How to meet timing requirements
- How to consolidate redundant logic
- Whether there are duplications that can be removed

Synthesis tools try to "optimize" the design - just like a software compiler, but for the physical world.

## Constraints - What Turns RTL into Something Real

To direct the result, constraints are added:

### Clock Frequency
For example:
"The component must work at 1GHz".

The tool will try to build paths fast enough to meet this.

### Timing Constraints
For example:
"This signal must arrive on time to another section".

### Power Consumption Constraints
Sometimes speed is sacrificed for energy savings.

### Interface Connections
Precise definition of signals coming from outside.

**Constraints are what direct Synthesis to the right result.**

## What Comes Out in the End?

The synthesis output is:

**Netlist**
A file that describes:

- Which gates exist
- How they're connected
- How to implement each physical operation

**This is the "actual hardware" at the logical level.**

In the next stage, Backend teams will work on the Netlist.

## An Analogy to Clear Things Up

Think of Synthesis as a translation process:

**High-level description:**
"Build me a house with two rooms, a living room, and a kitchen."

**Synthesis:**
"I translate this into bricks, beams, concrete, and plumbing."

**RTL says what should happen.**
**Synthesis determines what it's actually made of.**

## Why Is Synthesis So Important?

Because it:

- Reveals timing problems
- Reveals impossible logic
- Allows discovering bugs not seen in simulation
- Creates the foundation for Backend operations
- Enables seeing the hardware "crystallize" for the first time

**First time the chip takes tangible form.**

## Where Do We Go From Here?

After the Netlist is created:

1. Pass it to the Backend team
2. Start Place & Route
3. Handle actual timings
4. Build the chip's physical layout
5. And prepare it for Tapeout

In other words:

**Synthesis is the bridge between the logical description world - and the actual physical world.**

## Summary

Synthesis is a stage where:

- RTL is translated to actual gates
- Behavior becomes hardware
- Constraints determine design quality
- Netlist is the output leading to manufacturing
- The chip starts to "be born" for the first time

---

**In the next post, we'll learn about Place & Route - how to position gates on the chip and connect them with actual wires, and how this becomes a complete physical layout.**
