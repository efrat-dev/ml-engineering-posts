---
language: "en"
title: "How Does Inference Actually Work?"
categories:
  - "Inference Process"
tags:
  - "Optimization"
  - "Inference Deep Dive"
series: "Inference Deep Dive"
previousPost: "1-training-inference.en"
nextPost: "3-behind-the-scenes-inference"
slug: "2-how-inference-works-en"
---


# How Does Inference Actually Work?

In the previous post, we discussed what Inference is - the phase where the model no longer "learns" but applies what it already knows.
Now, let's dive deeper to understand what really happens behind the scenes.

## Step 1: Input is Received

The model receives your question (or an image, or any command).
This input is translated into numbers - a mathematical representation of its meaning.
This is called Embedding.

## Step 2: The Journey Through Layers

The numbers pass through dozens or hundreds of layers of neurons.
In each layer, computations are performed to refine the meaning further.
This computation is called the Forward Pass - a forward-only movement (no corrections or relearning).

## Step 3: Deciding on the Answer

At the end of the process, the model produces a list of probabilities:
What is the likelihood that each token (word or part of it) is the correct continuation?
The token with the highest probability is chosen - and then a new round begins.
This is how an answer is generated, token by token.

## Why is This Important?

Each of these steps is an opportunity to improve performance:

- How data flows between layers.
- How memory is accessed.
- And how transitions are managed between the CPU, GPU, or a dedicated accelerator like NR1.

Optimizing these steps is the core of the field of Inference Optimization.

## Quick Summary

Training = Learning knowledge.

Inference = Using it.

Every second saved in the process = A better user experience and greater system efficiency.

---

**In the next post, we'll learn about:** What happens behind the scenes in Prefill, Decode, and KV Cache management - the mechanisms that determine how fast the model can respond.
