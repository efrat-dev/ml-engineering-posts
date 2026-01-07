---
language: "en"
title: "What is Cache and Why Does It Change Everything?"
categories:
  - "Hardware"
tags:
  - "Cache"
  - "Optimization"
series: "Hardware Inference Optimization"
previousPost: "3-cores-and-threads-en"
nextPost: "5-core-management-en"
slug: "4-cache-importance-en"
---


# What is Cache and Why Does It Change Everything?

Alongside the cores, there’s a critical part of the processor called Cache - and it’s the secret to speed.

## Why Do We Even Need It?

Accessing main memory (RAM) is much slower than the computations the processor performs.
That’s why every processor includes a small, extremely fast memory - the cache - where it stores data it uses repeatedly.

In fact, when a model performs inference, it doesn’t access main memory every time.
The data and variables it needs most are stored in the cache, saving valuable time.

## Types of Cache

There are several “layers” of cache:

- **L1** - The smallest and fastest, located directly on the core.
- **L2** - Larger but slightly slower.
- **L3** - Shared across all cores, used for sharing information between them.

## Why is This Important for Inference?

If threads migrate between cores, they lose their cache -
and this causes performance to fluctuate up and down.

This is one of the reasons why understanding Thread Affinity (binding tasks to a fixed core) is crucial - a topic we’ll dive into in the next post.