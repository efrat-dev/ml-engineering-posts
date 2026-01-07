---
language: "en"
title: "What is a Kernel?"
categories:
  - "Hardware Acceleration"
tags:
  - "Kernels"
  - "Parallel Computing"
nextPost: "kernel-fusion.en"
slug: "what-is-kernel-en"
---


# What is a Kernel?

A Kernel is the most fundamental computational unit that performs operations on data.
It represents the “actual computation” - the operation that truly runs on the hardware.

### Think of it as:
- A function written in a low-level language (like C++ or CUDA)
- The small algorithm that performs the real work
- The core of the operator - where computation happens at the bit and memory level

### Why Do We Need Kernels?
1. To perform computations quickly and efficiently
Kernels are written to maximize hardware capabilities:
parallelism, local memory, multi-core utilization, dedicated compute engines, and more.

2. To hide complexity from the user
A model user doesn’t need to know how exactly a convolution is performed.
The Kernel handles all the details - from memory allocation to processor instructions.

3. Because every hardware requires tailored Kernels
CPU, GPU, TPU, or a dedicated accelerator like NR1 -
each has its own Kernels optimized for its configuration and architecture.

### Conceptual Example (Not Code)
Let’s say you want to perform matrix multiplication.
In PyTorch, this is done with a simple call.

But in reality:
- PyTorch invokes the backend
- The backend selects an appropriate Kernel
- The Kernel runs on the hardware
- And the actual computation happens there

The user sees “one operation.”
The system performs dozens of optimizations under the hood.

---

### How Does This Relate to AI?
Every model - from the smallest to the largest LLM - is built from thousands of basic operations.
Each of these relies on a Kernel.

### Therefore:
- Performance
- Memory consumption
- Latency
- Throughput

All are largely determined by the quality and efficiency of the Kernels running the model.

---

### Summary
A Kernel is the computational core -
the unit that actually performs the work upon which every AI library relies.

- It is the true compute engine
- Tailored to the hardware
- Hidden from the user
- Critical to performance

Behind every “simple” line in PyTorch or any ML framework -
there’s a Kernel doing the real work.