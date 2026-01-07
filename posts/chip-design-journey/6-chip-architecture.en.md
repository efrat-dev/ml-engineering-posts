---
language: "en"
title: "What is Chip Architecture - And Why Is It the Stage Where You Decide What the Chip Will Really Be?"
categories:
  - "Chip Design"
tags:
  - "Architecture"
  - "System Design"
series: "Chip Design Journey"
previousPost: "chip-design-journey/5-rtl-for-beginners.en"
slug: "6-chip-architecture-en"
---

# What is Chip Architecture - And Why Is It the Stage Where You Decide What the Chip Will Really Be?

In previous posts, we talked about what a chip is, what an SoC is, and how you "write" hardware using RTL.
Now we'll approach a central part of the Frontend world:

**Chip Architecture**

This is the stage where system designers determine:

- Which units will be in the chip
- How they'll communicate with each other
- What resources are needed
- What the data flow looks like
- And what the chip's overall capability will be

Simply put:
**Architecture is the top-level design - the plan that dictates everything that comes next.**

## Why Do We Even Need Architecture?

A chip is not a "single component".
It's a complex system that contains:

- Computing units (CPU / GPU / NPU)
- Memories
- Controllers
- Internal communication bus
- Support units (video, network, etc.)
- I/O protocols
- Clock and power management system

All of these must work together in an organized manner.

**Without architectural planning:**

- The system won't be efficient
- There will be resource conflicts
- Performance won't meet requirements
- It won't be possible to verify or build it

## What Does a Hardware Architect Actually Do?

### 1. Understands Product Requirements
What does the chip need to do?
Is it intended for a car? Camera? AI accelerator? Mobile? Server?

Each product - different requirements.

### 2. Determines Which Blocks Are Needed
For example, in an AI chip:

- Matrix accelerator
- Fast internal memory
- Communication controller
- CPU for management
- Compression/decompression engine
- I/O for running the model

### 3. Defines Communication Structure Between Units
Who talks to whom?
What's the bandwidth?
How are loads scheduled?

### 4. Determines Memory Division
How much Cache?
What internal SRAM?
How does each unit get access?

### 5. Defines Clocks and Power Consumption
Who always works?
Who turns off in power-saving mode?
What are the required speeds?

## Data Flow - One of the Most Important Things

Architects diagram:

- Where does data come from?
- Who processes it?
- Where does it go next?
- Where are bottlenecks created?

This flow is critical for performance.

**For example:**

If an NPU produces 200GB/s of data
but the bus can only transfer 100GB/s -
**The chip won't meet requirements.**

The architect is the one who prevents these situations in advance.

## What Comes Out at the End of the Architecture Stage?

A long and detailed document that serves all development teams:

- **Block Diagrams**
- **Communication Interfaces**
- **Clock schedules**
- **Memory requirements**
- **Logical description of operations**
- **Division of responsibilities between teams**

This is the foundation on which RTL engineers will start writing the hardware.

## Why Does Architecture Come Before RTL?

Because without planning:

- You don't know which modules to build
- You don't know how they should communicate
- You don't know what the requirements are
- You don't know what's important and what's secondary

**Architecture is the "story".**
**RTL is the "chapter".**

## An Illustrative Analogy

Imagine you're building a house:

**The architect** decides:
- How many rooms there will be
- Where the kitchen is
- Where the bathrooms are
- How air will flow
- What the power consumption is

**The RTL engineer** takes the plan and builds the details:
- How exactly each room looks
- How to build each wall
- What will be in each corner

Without architecture - there's no plan.
Without a plan - you can't build.

## Summary

Chip architecture is:

- The top-level definition of what the chip does
- How the units within it are arranged
- How information flows between them
- What resources are needed
- And how everything works together in an actual system

It's the stage where you draw the big picture -
before entering the logic lines in RTL, before simulations, and before physical construction.

---

**This is the "Chip Design Journey" series - an in-depth journey into the world of chip design. In the continuation, we'll learn about Verification, Synthesis, Place & Route, and more critical stages on the way to an actual chip.**
