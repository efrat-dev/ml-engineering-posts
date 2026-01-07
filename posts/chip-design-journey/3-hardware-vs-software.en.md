---
language: "en"
title: "How Do You Actually 'Write' Hardware? The First Step to Understanding RTL and the Frontend World"
categories:
  - "Chip Design"
tags:
  - "RTL"
  - "Frontend"
series: "Chip Design Journey"
previousPost: "chip-design-journey/2-what-is-soc.en"
slug: "3-hardware-vs-software-en"
---

# How Do You Actually "Write" Hardware? The First Step to Understanding RTL and the Frontend World

If you come from the software world, the most natural question is:

**How can you write hardware?**

After all, hardware is something physical, with transistors and wires…
So how does this relate to code?

To answer this - we need to understand a very basic difference.

## Software Runs. Hardware Behaves.

**In software**, you write commands, and the processor executes them one after another.

**In hardware**, you don't "run code".
Instead - you describe logical behavior that later becomes an actual circuit.

Therefore, hardware languages are completely different from regular programming languages.

## What is RTL?

**RTL = Register Transfer Level**
This is a description method where a hardware engineer writes:

- Which data flows where
- What happens at each clock cycle
- Which signals change and when
- How a component responds to different inputs

RTL is essentially **a language for describing circuit behavior**.

It's not executable code,
but a logical blueprint explained through text.

## Wait - What Does This Look Like?

Very simply, RTL includes:

### 1. Inputs and Outputs
That define what the component receives and returns.

### 2. Registers
Small places that hold information for clock cycles.

### 3. Always blocks
Patterns that describe what happens:

- At every clock edge
- Or at every signal change
- Or at every other logical operation

### 4. Logic
"If", "and", "or" connections, data connections, etc.

## Why Do We Need RTL?

Because it's the way to precisely describe:

**How the hardware will behave before it's created.**

And only after the behavior is described and verified -
can it actually be turned into transistors and physical paths.

## A Simple Analogy

Think about building a house.

**Software** = building the house through trial and error:
Code runs → change → run again.

**Hardware** = must plan before manufacturing:
Architecture → electrical plan → plumbing plan…
And only then actual construction.

**RTL is the architectural plan of hardware.**

## Why Don't We Write Hardware in a Regular Language Like Python?

Because:

- Hardware works **in parallel** (multiple simultaneous operations)
- Hardware depends on the **clock**
- Different parts respond **simultaneously** to signals
- You can't "run" and fix after manufacturing
- Imprecise description can break physical timing

Hardware is a completely different world from software.

## Therefore, We Use Dedicated Languages Like:

- **Verilog**
- **VHDL**
- **SystemVerilog**

They are not "programming" languages, but **"description" languages**.

## How Does RTL Fit Into the Development Process?

This is a big picture that will accompany us throughout the series:

1. Describe logic in RTL
2. Run simulations to verify it's correct
3. Verify it works in every scenario
4. Convert it to physical gates (Synthesis)
5. Place it on an actual chip (Backend)
6. Manufacture the actual chip

**RTL is the starting point for all actual hardware.**

## Summary

In this post, we learned:

- Software is code that executes
- Hardware is behavior that's described
- RTL is the language that describes this behavior
- Only after complete description can the chip be built
- This is the foundation for the entire Frontend world

---

**This is the "Chip Design Journey" series - an in-depth journey into the world of chip design from beginning to manufacturing. In the continuation, we'll dive deeper into chip architecture, Verification, Synthesis, and more.**
