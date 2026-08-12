---
language: "en"
title: "What Are Reference Numbers - And Why Are They Critical When Benchmarking Models?"
categories:
  - "Inference Benchmarking"
tags:
  - "Benchmark"
  - "Reference Numbers"
slug: "reference-numbers-benchmarking-en"
---


# What Are Reference Numbers - And Why Are They Critical When Benchmarking Models?

When testing the performance of a model - YOLO, ResNet, an LLM, or any other model -
the first question is usually:

Is the result we got good?

But "good" is a vague concept.
To know whether a result is truly good, fast, accurate, or consistent - you need to compare it to something.

This is where reference numbers come in.

## What Are Reference Numbers, Really?

Reference Numbers are official or pre-agreed-upon metrics
that represent the desired performance or target a model or system is supposed to achieve.

They can be:

- A standard run time
- A processing rate (FPS / Throughput)
- Memory consumption
- Accuracy
- Maximum hardware capability
- Results published by the manufacturer/community
- Ground truth values for a model's outputs

They serve as a reference point for comparison.

## Why Do You Even Need Reference Numbers?

Suppose some model runs on your machine and achieves:

- 50 frames per second
- 200 milliseconds per image
- Detected 85% of objects

Is that good?
Is it slow?
Is it expected?

Without a reference - you have no idea.

Only when you hold a number defined as "correct":

- For example: ResNet50 should run at 15ms on a certain GPU
- Or YOLOv8-S is supposed to reach 120 FPS on certain hardware
- Or a certain model should return a known result

Only then can you know whether your test is:

- Successful
- Too slow
- Out of range
- Or indicative of a bug

## Why Is This Especially Critical in Benchmarking?

Benchmarking is meant to answer questions like:

- How fast does the model run?
- Are the performance numbers stable?
- Does new hardware actually improve performance?
- Did code changes hurt performance?

Without a reference - a benchmark has no meaning,
because there's nothing to compare against.

A reference is a baseline -
through which you can see deviation, improvement, or regression.

## Different Types of Reference Numbers

### 1. Performance Reference

Pre-defined technical metrics:

- Expected run time
- Allowed memory amount
- CPU or GPU usage
- Throughput rates

For example:
a model should run at 8ms ±10%.

### 2. Accuracy Reference

Comparison against a known result:

- Expected accuracy rate
- Maximum Loss
- Recall and Precision

For example:
a certain model must reach 76% Top-1 Accuracy.

### 3. Functional Reference

Results that should be bitwise identical or very close:

- Bounding box values
- Classification labels
- Number of detections

If the result differs - that's an indication of a bug.

### 4. Industry-Standard Reference

For example:
MLPerf results, SPEC, or open benchmarks from hardware companies.

## Why Is a System Without a Reference Dangerous to Evaluate?

Without a reference:

- You might think a small improvement is significant (when it's actually random).
- You might miss a performance regression.
- It's hard to identify bugs in a model's output.
- You can't assess the impact of code changes.
- It's hard to communicate with another team - because there's no agreed-upon metric.

A reference turns a check from a "feeling" into a real measurement.

## An Analogy

Think of a student who took an exam.
Without an answer key - you can't know if they got 70, 80, or 95.

Reference numbers are the answer key.
They turn a raw result into something interpretable.

## A Simple Example

Suppose you're running YOLO on a standard image.

The output reference says:

- There should be 5 objects
- With certain positions (within a certain range)
- And with times of 12ms ± an error margin

If you got:

- 7 objects, or only 3
- 5 objects but in different positions than the correct ones
- 35ms run time

You know for certain something is wrong.

## How Do You Define a Good Reference?

A quality reference should be:

- Agreed upon in advance
- Precise and reproducible
- Measurable, not vague
- Realistic for the hardware and versions
- Stable (not affected by minor noise)

For example:

"ResNet50 should finish Inference in 12.5ms ± 0.5ms,
and produce a Top-1 Accuracy of at least 75.9% on ImageNet."

That's an excellent reference - precise, sharp, and clear.

## Summary

Reference numbers are:

- Standard metrics
- Reference points for comparison
- A foundation for a valid benchmark
- A way to detect regressions and bugs
- A shared language between teams

Without a reference - performance tests have no real meaning.
