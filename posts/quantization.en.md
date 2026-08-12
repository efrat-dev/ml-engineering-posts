---
language: "en"
title: "Quantization - How to \"Shrink\" Models Without Hurting Results"
categories:
  - "Inference Optimization"
tags:
  - "Quantization"
  - "Inference"
nextPost: "quantization-formula-en"
slug: "quantization-en"
---


# Quantization - How to "Shrink" Models Without Hurting Results

AI models, especially large ones (LLMs),
consume enormous amounts of memory and compute.
To run them efficiently, you need a smart way to shrink them - without breaking accuracy.

This is where quantization comes in.

## What Is Quantization, Really?

Quantization is a technique that converts very precise numbers (usually float32)
into a "coarser" version - for example int8, or even int4.

In simple terms:
we're reducing the resolution of the model's weights.
Instead of storing 32 bits per value, we store just 8 bits - 4x less data.

## Why Does This Matter?

### Memory Savings

A huge model that takes up 80GB in its original form
can shrink to around 20GB after quantization.
The implication: you can run it on weaker hardware, or handle a larger volume of concurrent requests.

### Significant Compute Speedup

Operations on small integers (int8)
run much faster on modern processors and accelerators,
leading to a noticeable improvement in inference latency and throughput.

### Lower Power Consumption

Fewer bits = fewer memory read/write operations = less energy.

## But What's the Cost?

The lower the resolution, the more accuracy the model loses -
because we lose information in the numbers.

That's why there are two main approaches to quantization:

- **Post-training quantization** - the conversion is done after the model has already been trained. Simple, fast, but less accurate.
- **Quantization-aware training (QAT)** - the model is trained in advance "under the assumption" that its weight values will be quantized. This preserves accuracy, but requires more work.

## A Simple Example

Quantizing to int8 doesn't turn a decimal weight into a "more rounded" decimal number -
it turns it into an integer, within a fixed range (say, -128 to 127), according to a conversion factor (scale).

For example, a weight w = 0.8374 could become w_q = 107 (an integer),
with an appropriate scale used to reconstruct an approximation of the original value.

This preserves the relative meaning of the values - while storage and execution happen with integers, which are far cheaper.
(Exactly how the scale and conversion are computed is the topic of the next post.)

## So Why Is Everyone Talking About This?

As models grow, the main bottleneck isn't accuracy - it's resources.
Quantization makes it possible to run large models
on smaller, cheaper hardware,
and bring AI capabilities to edge devices too - like phones, cars, or smart cameras.

## Summary

Quantization isn't just "a trick for saving memory."
It's one of the key technologies that let AI
move from the lab - into the real world.
