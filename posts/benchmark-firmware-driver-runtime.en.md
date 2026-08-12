---
language: "en"
title: "Behind the Scenes of a Benchmark - What's Really Measured When You Measure Inference"
categories:
  - "Hardware"
tags:
  - "Firmware"
  - "Benchmark"
previousPost: "firmware-driver-runtime-en"
nextPost: "nic-inference-en"
slug: "benchmark-firmware-driver-runtime-en"
---


# Behind the Scenes of a Benchmark - What's Really Measured When You Measure Inference

When we run a benchmark to check a model's performance,
it looks like we're simply "checking speed."
But in practice, what's being measured is delicate coordination between three software and hardware layers:
Firmware → Driver → Runtime.

## Step 1: Runtime - the One Managing All the Scheduling

When the benchmark starts, the runtime (say, PyTorch or TensorRT)
receives the task: run the model.

It decides:

- which batch size to use
- how many threads to spin up
- and how to split the work between cores or accelerators

Every such decision affects two critical metrics:

- **Latency** (response time) - how long a single prediction takes
- **Throughput** (TPS) - how many predictions per second the system can sustain

## Step 2: Driver - the One Translating Into Physical Operations

Once the runtime decides what to run, it sends commands to the driver.
The driver ensures these commands reach the hardware correctly:

- it schedules the queues
- makes sure there are no conflicts
- and transfers data optimally to local memory

If the driver is well coordinated - every processing unit gets continuous work.
If not - you'll see "holes" in time, where the hardware waits for new requests.

## Step 3: Firmware - the One Actually Executing

Here the magic becomes physical:
firmware runs on the component itself and performs the actual computation -
matrix multiplication, memory reads, cache management, and everything that makes up the inference operation.

If it isn't built well, operations will execute in an inefficient order -
for example, memory reads happening before the data is even ready.
Every such delay translates directly into higher latency.

## What Does This Mean During a Benchmark?

When you measure performance, you're actually testing how well-synchronized the three layers are:

- A smart runtime knows how to load correctly.
- An efficient driver schedules without delays.
- Well-tuned firmware utilizes every clock cycle.

A good benchmark result isn't just "strong hardware" -
it's the outcome of perfect coordination between the three layers.

## Summary

A successful benchmark is like an orchestra:
if the conductor (runtime), the sheet music (driver), and the musicians (firmware)
aren't coordinated - even the best cello in the world won't save the melody.

Only when everything works in harmony
does your system truly realize the hardware's potential.
