---
language: "en"
title: "Why Must There Be a Separation Between Test Code and Production Code in ML Systems?"
categories:
  - "Development Tools"
tags:
  - "Testing"
  - "MLOps"
previousPost: "negative-testing.en"
nextPost: "regression.en"
slug: "test-vs-production-code-ml-en"
---


# Why Must There Be a Separation Between Test Code and Production Code in ML Systems?

In the world of machine learning, there's one sentence that keeps coming back:
a good model doesn't necessarily mean a good system.

An ML system includes:

- Training code
- Test code
- Production code
- Evaluation code
- Data infrastructure
- Models, versions, and documentation

For the system to be reliable, accurate, and stable -
there must be a sharp, clear separation between test code and production code.

Why?
Because mixing the two can lead to incorrect results, fragility, and bugs that are hard to detect.

## What Is Test Code and What Is Production Code?

### Test Code

Code intended to:

- Check the model
- Verify quality
- Run benchmarks
- Create controlled scenarios
- Compare against reference results

It doesn't run in the real system,
and it's not designed for high performance or long-term durability.

### Production Code

Code intended to:

- Run the model "in real life"
- Process data in real time
- Integrate the model into a system
- Run on real hardware
- Withstand load
- Handle communication issues
- Be fast, stable, and efficient

This is the code that customers, users, or other systems actually work against.

## Why Must There Be a Separation?

### 1. Reliability - Preventing Hidden Bugs

When tests live in the main code:

- A small change for testing purposes can break production behavior
- A "temporary" condition stays for 6 months
- The system behaves differently than you thought

In ML this is critical, because the model is sensitive to order, data, and configuration.

### 2. Performance - Test Code Is Almost Always Slow

Test code:

- Writes logs
- Compares results
- Saves files
- Measures run times
- Performs sanity checks

In production → nobody wants to pay for that.

An ML system needs to be fast and efficient -
so test code needs to stay out of it.

### 3. References and Versions - Tests Assume Internal Knowledge

Test code:

- Uses ground truth (true labels) to compare against the model's predictions
- Reads reference files
- Compares results bitwise (checking results at bit-for-bit precision)
- Runs regression tests (a test suite that verifies a code change didn't cause a performance drop or break behavior that worked in the past)

In production → there's no Ground Truth.
It's a "blind" system that has to respond to any input.

That's why production code must never rely on assumptions from tests.

### 4. Security and Stability

Test code sometimes includes:

- Debug prints
- Access to local files
- Internal tools
- Hidden parameters
- Simulations

These are things that shouldn't make their way into a live system.

## How Do You Ensure Proper Separation?

**Rule 1: Code partitioning**
Different folders, separate modules.

**Rule 2: No tests in production**
No comparisons, no asserts, no writing to reference files.

**Rule 3: Don't mix test data with system data**
Ground Truth belongs to the QA environment only.

**Rule 4: Different configuration per environment**
test.yaml, prod.yaml, dev.yaml - a sharp separation via configuration files.

**Rule 5: CI tools run the tests - not the Production Runtime**
Especially important in ML projects.

## A Short Analogy

Think of a pilot:
there's a simulator (test) and a real aircraft (production).
Both have a flight system - but they don't share the same code.
The simulator is full of checks, slow, precise, and monitors everything.
The real flight - needs to be light, fast, and reliable.

In ML, it's exactly the same principle.

## Summary

In ML systems, separating test code from production is not "nice to have" -
it's essential.

- Test Code checks quality
- Production Code delivers performance
- Tests use ground truth
- A live system can't rely on it

Mixing them creates bugs, noise, and performance degradation.

A good ML system is built from two organized layers:
one that learns and checks - and another that runs in the real world.
