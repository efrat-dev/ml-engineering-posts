---
language: "en"
title: "What Happens Behind the Scenes When the Model Answers You? (Prefill, Decoding, and KV Cache)"
categories:
  - "Inference"
tags:
  - "Prefill"
  - "Decode"
  - "KV Cache"
series: "Inference Deep Dive"
previousPost: "2-how-inference-works.en"
nextPost: "4-bottlenecks-in-inference"
slug: "3-behind-the-scenes-inference-en"
---


# What Happens Behind the Scenes When the Model Answers You? (Prefill, Decoding, and KV Cache)

When you send a question to a language model, it seems like it's simply "inventing" an answer on the fly -
but in reality, there are two main stages in the process called Inference:

## Stage 1: Prefill

In this stage, the model receives all your input (the prompt) and computes its internal representation.
It's like someone reading your entire question before starting to answer.
This stage involves many computations - but it happens only once per question.

## Stage 2: Decoding

Now the actual generation begins - the model produces each new token, one at a time.
Each token depends on what was generated before it, so it needs to remember the history.

## KV Cache

This is a kind of "memory notebook" where intermediate results of the internal layers are stored.
Instead of recalculating everything each time - the model simply keeps what it has already worked on.

- Advantage: Significant savings in time and computation.
- Challenge: As the answer gets longer, the cache grows and takes up more memory.
  If access to it is slow - it itself becomes a bottleneck.

## Why Is This Important?

Proper management of the KV Cache is one of the keys to accelerating inference in large models.
Hardware and software companies invest tremendous efforts in optimizing it -
because it directly affects throughput (how many tokens per second can be generated).

---

**In the next post, we'll learn about:** Bottlenecks that can slow down the Inference process - from memory to scheduling, and how to identify them.
