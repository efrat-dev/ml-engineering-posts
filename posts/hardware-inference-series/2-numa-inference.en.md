---
language: "en"
title: "What is NUMA and Why is it Important for Inference Optimization?"
categories:
  - "Hardware"
tags:
  - "NUMA"
  - "Inference"
series: "Hardware Inference Optimization"
previousPost: "1-hardware-inference-optimization-en"
nextPost: "3-cores-and-threads-en"
slug: "2-numa-inference-en"
---


# What is NUMA and Why is it Important for Inference Optimization?

When running a model on a powerful server, we tend to think that all CPUs and memory are available “at the same speed.”
But the truth is far from it. This is where the architecture called NUMA - Non-Uniform Memory Access - comes into play.

## What Does This Mean in Practice?

Modern servers have multiple processors (sockets), and each of them has:

- Its own cores.
- Memory (RAM) that is “physically close” to it.

Access to memory directly connected to your processor is very fast.
But if the processor needs to access the memory of a “neighbor” - that is, memory connected to another processor -
it does so via an internal interconnect, which is slower.

## Why is This Important for Inference?

In inference, every small delay adds up:
If a process running on one socket repeatedly accesses memory located on another socket,
it creates unnecessary latency that can account for tens of percent of the total time.

This happens, for example, when:

- A model runs on cores in one CPU, but its data resides in the memory of another CPU.
- The operating system automatically distributes processes without understanding the implications.

## How Do You Solve This?

- Place processes and memory on the same node - what’s called “NUMA-aware allocation.”
- Use tools like `numactl` to assign each process to a specific socket and core.
- Maintain locality - ensure that all computation and memory access happen as “close to home” as possible.

## Bottom Line

NUMA is not just an architectural trivia point - it’s a direct factor in latency.
Awareness of NUMA and proper binding of processes to the correct memory can make the difference between a sluggish system
and one that delivers predictions at nearly double the speed.