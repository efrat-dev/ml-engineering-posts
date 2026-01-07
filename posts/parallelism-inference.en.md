---
language: "en"
title: "Parallelism - How to Run Models in Parallel?"
categories:
  - "Inference Optimization"
tags:
  - "Parallelism"
previousPost: "concurrency-inference.en"
slug: "parallelism-inference-en"
---


# Parallelism - How to Make a Computer “Think” in Multiple Directions Simultaneously

When we run an AI model, it needs to process a lot of mathematical computations.
To make this happen quickly - we want different parts of the computation to work in parallel, not one after the other.
This is exactly the meaning of Parallelism.

## What’s the Difference Between Parallelism and Concurrency?

- **Concurrency** = How many tasks are “open” at the same time, even if the processor switches between them intermittently.
- **Parallelism** = How many tasks are actually running simultaneously, on different cores or chips.

Imagine a kitchen:

- In concurrency - one chef switches between several pots.
- In parallelism - multiple chefs cook together, each on a different pot.

## Why is It Important in Inference?

When running a large model, the work can be divided among several processors or accelerators:

- One part computes the model’s initial layers.
- Another part computes other layers in parallel.
- Finally, the results are combined.

This way, you can achieve shorter response times without compromising the model’s accuracy.

## Main Types of Parallelism

### Data Parallelism
Each accelerator gets a copy of the model but works on different data.
For example: One GPU processes image A, another GPU processes image B.

### Model Parallelism
The model itself is split across multiple accelerators.
One GPU computes part of the layers, another GPU continues from where the first left off.

### Pipeline Parallelism
The model’s layers flow like an “assembly line”:
While one device computes one stage, another is already working on the next stage.

## Bottom Line

Parallelism is one of the key ways to make AI systems run faster and at a larger scale.
As models grow larger - Parallelism becomes increasingly critical for performance.
