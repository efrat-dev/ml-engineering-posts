---
language: "en"
title: "What Is DFT - and Why Must a Chip Be \"Testable\" Starting From the Design Stage?"
categories:
  - "Chip Design"
tags:
  - "DFT"
  - "Verification"
series: "Chip Design Journey"
previousPost: "chip-design-journey/12-tapeout.en"
nextPost: "chip-design-journey/13-fab-bringup-post-silicon.en"
slug: "12b-dft-en"
---

# What Is DFT - and Why Must a Chip Be "Testable" Starting From the Design Stage?

In the world of chips, testing is a huge part of the cycle.
It's not enough to design an excellent chip -
you need to make sure every part of it can be tested before it goes into mass production.

This is where an important concept comes in:

DFT - Design For Testability.
In other words: designing the chip in advance so it can be tested efficiently, quickly, and precisely.

Without DFT -
even a theoretically perfect chip can fail in production, or a fault might go undetected in time.

## Why Do You Need DFT?

Once a chip leaves the fab, testing it is very expensive:

- Every wafer contains hundreds of chips
- Every chip must be tested
- Every second of testing costs money
- You can't open up the chip to see what's happening inside

That's why, already at the RTL and backend stages, dedicated test logic is built in.

The goal:
to let the chip "tell us about itself."

## What Problems Does DFT Solve?

### 1) Manufacturing Issues

Even when the design is perfect -
the manufacturing process can introduce:

- Shorts
- Open connections
- Defective transistors
- Lithography faults

DFT allows identifying defective chips before they reach customers.

### 2) Timing and Logic Issues

A large design contains millions of gates.
DFT allows you to:

- Isolate a problematic area
- Diagnose a faulty path
- Understand what happened inside the chip

Without DFT - the chip is a "black box."

### 3) High-Speed Testing

Running regular functional tests on a whole chip is:

- Slow
- Requires a lot of software
- Doesn't cover every case

DFT adds dedicated circuits that enable very fast testing.

## How Does DFT Work in Practice?

Here are the three main mechanisms, explained simply:

### 1) Scan Chains

Testing the chip using "scan chains."

An intuitive explanation:
you take thousands of flip-flops inside the chip, connect them like beads on a string, and this lets you feed a test sequence into the chip and read out the results quickly.

The advantage:
you can test almost all the logic on the chip - easily.

### 2) Built-In Self Test (BIST)

The chip runs tests on itself, from the inside.

Two main types:

- **MBIST** - tests memories
- **LBIST** - tests logic

It's like a plane running "self-checks" before takeoff.

### 3) Boundary Scan (JTAG)

Tests for I/O interfaces - how the chip talks to the outside world.

This is a method that lets you test connections using just 4-5 pins.

## Why Does DFT Matter to Developers Too, Not Just Hardware Engineers?

Because DFT:

- Determines whether the chip reaches the market on time
- Reduces faults that can no longer be fixed
- Lets the software team work on stable chips
- Directly affects product quality
- Prevents the need for a repeat tapeout (a risk of millions of dollars)

Without DFT - every bring-up becomes an almost impossible task.

## A Simple Image

Imagine you need to test a device that can't be opened.
If the engineers didn't leave "windows" or "internal sensors" -
you have no way of knowing what works and what's broken.

DFT is exactly those windows and sensors.

## Summary

DFT is one of the most important stages in chip design:

- It allows detecting manufacturing defects
- It allows understanding what's happening inside the chip
- It allows fast, efficient testing
- And it's essential for preventing costly mistakes after tapeout

This is the testing infrastructure of the entire chip industry -
behind the scenes, but just as essential as the logic itself.
