---
language: "en"
title: "What Is HBM - and Why Does It Change the Rules of the Game in AI Performance?"
categories:
  - "Hardware"
tags:
  - "HBM"
  - "Memory"
previousPost: "ddr-memory-en"
nextPost: "pcb-motherboard-en"
slug: "hbm-memory-en"
---


# What Is HBM - and Why Does It Change the Rules of the Game in AI Performance?

In a world where AI models keep growing, the bottleneck has long since stopped being just the processor - it's the memory.
This is where HBM - High Bandwidth Memory - comes in, memory designed specifically to keep up with the pace of modern accelerators.

## Why Do You Even Need HBM?

In regular systems, memory (DDR) sits on the motherboard, physically distant from the processor.
To access it, data travels through relatively long channels, which limits bandwidth and response speed.

But in AI accelerators, like GPUs or NPUs, huge amounts of data need to move - billions of computations per second.
If every computation has to "wait" for memory - performance drops dramatically.

## So What's Different About HBM?

HBM is memory that sits physically right next to the compute chip itself, in vertical layers (stacked memory).
Instead of flat chips like in DDR, here the chips are stacked on top of each other and connected using tiny conductors called TSVs (Through-Silicon Vias).

This creates an especially short connection - resulting in:

- Enormous bandwidth (several times that of DDR5).
- Much lower power consumption.
- Nearly instantaneous access times.

In other words:
in regular memory like DDR, each memory chip is a flat layer sitting on the circuit board (like a single floor in a building).
In HBM, on the other hand, several such layers are stacked one on top of another - creating a tower of chips.

For all these layers to "talk to each other," tiny holes are drilled directly into the silicon, through which electrical current flows.
These conductors are called TSVs - Through-Silicon Vias (literally: "a passage through the silicon").

This creates a short, dense, and very fast connection between the layers -
and that's what allows HBM to move data at enormous speed, far beyond DDR memory, where signals have to travel through the relatively long and slow motherboard.

## How Fast Is It, Really?

HBM's bandwidth is measured in GB/s, and it grows significantly with each generation:

| Generation | Approx. Transfer Rate | Approx. Year |
|---|---|---|
| HBM1 | ~128 GB/s | 2015 |
| HBM2 | ~256 GB/s | 2017 |
| HBM2E | ~410 GB/s | 2020 |
| HBM3 | ~819 GB/s | 2022 |
| HBM3E | above 1.2 TB/s | 2024 |

For comparison, a regular DDR5 module transfers only about 40-50 GB/s.

## How Does This Fit Into the Architecture?

Typically, an accelerator includes:

- **HBM** close to the chip - for computations requiring high speed.
- **DDR** or PCIe memory farther away - for general storage.

The processor or accelerator knows how to balance between them -
speed versus capacity, depending on the nature of the task.

## A Real-World Example

GPUs like the NVIDIA H100 or NeuReality's NR1 accelerator use HBM to feed the processing units with data at a rate that regular memory simply can't achieve.
Without HBM - the accelerator would spend more time "waiting for data" than actually computing.

## Summary

HBM isn't "just another type of memory" - it's a shift in approach:
instead of keeping memory far from the processor, you bring it physically closer and shorten the path to the data.

In other words:
if DDR is like a highway outside the city -
HBM is a private, direct road straight into the processor itself.
