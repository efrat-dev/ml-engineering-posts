---
language: "en"
title: "What is an Accelerator?"
categories:
  - "Hardware"
tags:
  - "Accelerator"
  - "GPU"
series: "AI Hardware & Infrastructure"
previousPost: "ai-hardware-infrastructure/3-cuda-nvidia.en"
slug: "4-what-is-an-accelerator-en"
---


# What is an Accelerator?

And why, without it, AI models wouldn't move at all?

When we hear about GPUs, TPUs, or the Qualcomm AI Engine, they are all examples of one type of component - a computational accelerator.
But what is an accelerator, and why is it necessary?

## The Regular Processor (CPU) - "The General Brain"

The CPU is designed to be general-purpose. It can do everything -
run an operating system, open files, manage networks, and execute algorithms.

But it's not built to perform millions of identical mathematical operations in parallel.
In AI, that's exactly what's needed: massive computations on giant matrices.

## Enter the Accelerator

An accelerator is a component specifically designed to perform very specific mathematical computations -
for example, matrix multiplication and addition, which appear in almost every layer of a neural network.

Thanks to its design, the accelerator can perform thousands or even millions of operations simultaneously.
That's why, instead of calculating a model's answer in 10 seconds, it can finish it in less than a second.

## Examples from the Real World

- GPU (Graphics Processing Unit) - Originally developed for gaming, but became the most common AI accelerator.
- Qualcomm AI Engine - An accelerator built directly into smartphone chips, enabling models to run on the device itself, without a server.
- Google's TPU - An accelerator specifically built for neural networks, focusing on large-scale inference.

## How It Works in Practice

During inference, the accelerator performs:

- Heavy mathematical computations of the model.
- Parallel processing on batches of data.
- Fast data transfer between internal and external memory.

All while optimizing energy and time usage.

## Summary

The accelerator is the heart of every modern AI system.
The CPU is still responsible for management and control,
but the accelerator is the one doing the real heavy lifting.

---

**This is the "AI Hardware & Infrastructure" series - an in-depth journey into the hardware infrastructure behind modern artificial intelligence. In the continuation, we'll learn about GPU Clusters, the building blocks of data centers, and the broader ecosystem that connects them all.**
