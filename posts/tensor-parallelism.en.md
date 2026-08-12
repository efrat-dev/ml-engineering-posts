---
language: "en"
title: "The Problem Tensor Parallelism Solves"
categories:
  - "Inference Optimization"
tags:
  - "Parallelism"
  - "Tensor Parallelism"
previousPost: "parallelism-inference-en"
nextPost: "provisioning-inference-en"
slug: "tensor-parallelism-en"
---


# The Problem Tensor Parallelism Solves

In classic Model Parallelism, the model is split by layers:
one accelerator computes the early layers, another computes the later layers.

But what happens when a single layer itself is very heavy?
For example: a massive Linear layer in a language model, or an especially wide matrix.

You can't "cut" it in time - it's a single computation.

This is exactly where Tensor Parallelism comes in.

## What Is Tensor Parallelism, Really?

Tensor Parallelism means:
splitting the computation of a single layer across several accelerators.

Not different layers.
Not different samples.
The same mathematical computation - divided into parts.

Instead of one accelerator multiplying a very large matrix,
several accelerators each multiply a part of it,
and the result is combined at the end.

The logical model stays the same.
The physical execution - splits.

## An Intuitive Example

Consider computing a matrix-vector product.

In the regular approach:
one accelerator computes all the rows.

In Tensor Parallelism:
each accelerator computes a different group of rows.
Each returns a partial result.
At the end, the parts are combined - yielding exactly the same output.

No mathematical change.
Just smart division of work.

## The Analogy

If a layer is a long wall that needs painting:

**Model Parallelism**
The building is divided into floors - each worker is responsible for a different floor.

**Tensor Parallelism**
All the workers stand in front of the same wall,
and each paints their own strip.

One wall.
The work - parallel.

## Why Is This Critical in LLMs and Modern Inference?

In large models:

- Massive Linear layers
- Attention with wide matrices
- Heavy use of GEMM

Here the bottleneck isn't the model's depth - it's the width of the computation.

Tensor Parallelism enables:

- Running layers that don't fit in a single accelerator's memory
- Shortening the computation time of a single layer
- Better utilizing multiple accelerators even with a small batch

And in inference, where latency matters just as much as throughput - this changes everything.

## The Cost: Communication

Tensor Parallelism isn't "free."

After each accelerator computes its part,
results need to be gathered and synchronized:

- All-Reduce
- All-Gather
- Communication between accelerators

That's why it works especially well when there's:

- Fast interconnect between accelerators (NVLink, dedicated interconnect)
- Deliberate planning of the split boundaries

Without that - the computational gain can get swallowed by communication overhead.

## An Architectural Tip

Tensor Parallelism almost never stands alone.

In real systems, it's combined with:

- Data Parallelism across requests
- Pipeline Parallelism across layers
- Tensor Parallelism within heavy layers

In other words:
real parallelism is multi-layered - just like the model itself.
