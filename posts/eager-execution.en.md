---
language: "en"
title: "Eager Execution - When Models Start Thinking in Real-Time"
categories:
  - "Performance"
tags:
  - "Eager Execution"
  - "Dynamic Graph"
previousPost: "dynamic-static-graph.en"
nextPost: "onnx.en"
slug: "eager-execution-en"
---


# Eager Execution - When Models Start Thinking in Real-Time

In the past, when training machine learning models, the system would build an entire plan in advance - every step, every operation, all predefined within a “computation graph.”
The result? To know what’s really happening, you had to run the entire program and only then see the results.

Then came Eager Execution - a paradigm shift.

## What is It?

Instead of “planning everything in advance,” the model simply executes operations as they are written.
In other words - every operation is computed immediately, and every result is available right away.
No more “define and then run” - everything happens in real-time.

## Why is This So Significant?

Eager Execution made working with models much more:

- **Quick to understand** - You immediately see the output of each step.
- **Developer-friendly** - No need to understand the model’s internal structure to check what’s happening.
- **Flexible for experimentation** - Easy to modify, test, and fix on the fly.

## When is It Used?

Eager Execution is excellent for the research and development phase - when developers want to test ideas quickly.
But in the production stage, more “static” mechanisms are often used - enabling optimizations and extremely high performance.

## Bottom Line

Eager Execution changed the way developers think about machine learning.
Once, you would “plan computations” - now you simply compute.
