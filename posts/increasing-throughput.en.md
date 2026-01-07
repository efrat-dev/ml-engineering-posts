---
language: "en"
title: "How to Increase Throughput Without Slowing Down the System? (Batching, Stream Scheduling, and Offload)"
categories:
  - "Inference Optimization"
tags:
  - "Performance"
  - "Throughput"
previousPost: "behind-the-scenes-inference.en"
nextPost: "how-inference-works.en"
slug: "increasing-throughput-en"
---


# How to Increase Throughput Without Slowing Down the System? (Batching, Stream Scheduling, and Offload)

When thousands of users send requests to a model at the same time - how does it manage to respond to everyone?
Here are three smart mechanisms that enable the system to work at maximum efficiency.

## Batching - Combine Instead of Processing Separately

Instead of processing each request individually, similar requests are grouped into a single batch.
This way, the accelerator (GPU or NPU) can compute them all simultaneously, saving valuable computation time.

Continuous Batching takes it a step further -
There’s no more waiting for a new batch to fill up; instead, requests flow continuously.
The accelerator is always busy, throughput increases, and idle time drops to almost zero.

## Stream Scheduling - Utilize Every Computational Moment

Not all requests are the same length or complexity.
That’s why a scheduler is needed to decide who runs when and in what order.

If done correctly -
The accelerator will work on multiple streams simultaneously without wasting resources.
If not - short requests will wait for a long stream and suffer unnecessary delays.

## Offload - Shift Load to Smart Hardware

In a regular system, the CPU manages all requests, queues, and priorities.
But this causes it to become a bottleneck.
That’s why offload is used - transferring part of the management to dedicated hardware (like an accelerator or AI CPU).

This hardware handles communication and flow management on its own,
freeing up the CPU for other tasks and speeding up the entire system.

## Bottom Line

These three mechanisms work together:

- Batching ensures efficient use of the accelerator.
- Stream Scheduling maintains smart continuity.
- Offload prevents CPU overload.

When combined - the system operates with unprecedented speed and efficiency.