---
language: "en"
title: "Found a Bottleneck? Here’s What to Do Next"
categories:
  - "Profiling"
tags:
  - "Bottleneck"
  - "Inference Optimization"
previousPost: "why-is-your-model-slow.en"
nextPost: "grpc-ai-communication.en"
slug: "what-to-do-after-profiling-en"
---


# Found a Bottleneck? Here’s What to Do Next

Profiling revealed that your model is slow, but why?
The next step is Optimization - understanding exactly where the issue lies and how to fix it.

## Step 1 - Understand the Type of Problem

Not all delays come from the same source.
Here are four main categories of bottlenecks - and for each, a different way to address it:

| Type of Problem          | Symptoms                                   | Improvement Methods                                                      |
|--------------------------|-------------------------------------------|--------------------------------------------------------------------------|
| Memory I/O Bottleneck    | GPU waits for memory access, low utilization | Use efficient KV Cache, reduce CPU↔GPU transfers, or switch to smart Offload |
| Compute Bottleneck       | Accelerator runs at 100% all the time     | Use Batching, Kernel Fusion, or FP16/BF16 to reduce computational load   |
| Scheduling Bottleneck    | Some requests are “waiting in line”       | Use Continuous Batching or Stream Scheduling                            |
| Network / Latency Bottleneck | Long communication times between components | Co-locate services and use efficient gRPC protocols                      |

## Step 2 - Conduct Targeted Experiments

Not every change works immediately.
Change only one parameter at a time (batch size, precision, cache strategy) and check the impact in the next profiling session.

Performance improvement is an iterative process:
Measure → Improve → Measure again.

## Step 3 - Use the Right Tools

Recommended tools for the next steps:

- TensorBoard Profiler - for comparing different runs.
- NVIDIA Nsight Systems - for analyzing GPU and memory access.
- Perf / Py-Spy - for analyzing CPU-bound code.
- vLLM logs / traces - for checking batch efficiency.

## Final Tip

Performance improvement is the art of balance.
One optimization can solve one problem - and create another.
Don’t aim to “break records,” but to balance throughput, latency, and resource consumption.