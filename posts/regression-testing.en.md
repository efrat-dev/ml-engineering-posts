---
language: "en"
title: "Regression Testing - and Why It Is the Most Important Defense Against System Degradation"
categories:
  - "Development Tools"
tags:
  - "Testing"
  - "Regression"
previousPost: "regression-en"
slug: "regression-testing-en"
---


# Regression Testing - and Why It Is the Most Important Defense Against System Degradation

In the previous post we understood what regression is:
a change that was meant to improve things - but in practice hurts performance, stability, or quality.

Now comes the natural question:
how do we prevent regressions?

This is where regression tests come in.

## What Are Regression Tests?

Regression tests are a fixed set of tests designed to verify:

that any change in code, version, model, or configuration -
did not cause the system's behavior to degrade compared to what it was before.

In other words:
they check that the system hasn't "gone backwards."

## How Do Regression Tests Work in Practice?

The idea is simple:

1. There's a reference - behavior considered "correct."
2. The same operation is run on the new version.
3. The results are compared.
4. If there's a significant deviation - there's a regression.
5. If the results are identical or better - you can proceed with confidence.

## What Exactly Gets Compared?

It depends on the system.

### 1. Performance Regression Tests

Measured metrics:

- Runtime
- FPS
- Memory usage
- Throughput
- Latency
- Hardware resource consumption

Any small change in these metrics could indicate a regression.

### 2. Output Regression Tests

Comparing new output against:

- Golden Output - a standard result saved in advance
- Reference Labels - known labels
- Bitwise Output - in systems requiring bit-identical output

If the output differs materially - there's a problem.

### 3. Functional Regression Tests

Checking:

- Whether the API still works
- Whether existing functions still return valid values
- Whether the same number of objects is returned
- Whether relevant parts of the system haven't broken

## Why Are Regression Tests Especially Critical in ML Systems?

ML systems differ from regular software systems:

- Outputs are sensitive to every small change
- Dependencies exist between layers and configurations
- Optimizations can affect other parts unexpectedly
- Behavior is influenced by the entire pipeline, not just a single line of code
- Tests are about "quality," not just strict "correctness"
- Inference code runs on dedicated hardware and can slow down/speed up unpredictably

That's why in ML systems - regressions happen very easily, and are hard to detect without proper tooling.

## How Do You Build a Good Set of Regression Tests?

**1. Use fixed data**
Same inputs → same tests → precise comparison.

**2. Keep standard references**
Golden outputs, metrics, runtimes, configurations.

**3. Set deviation thresholds**
For example: "accuracy drop above 5% → regression."

**4. Run the tests on every change**
In CI, in PRs, or before a release.

**5. Write tests that cover both performance and output**
Combining both aspects catches nearly every type of regression.

## A Simple Example

Suppose we have a YOLO model.

Reference:
on a certain image - 5 objects should be detected, and processing time should be 12ms.

In the new version:

- The model detects only 3 objects, or
- The model runs at 25ms

Both results indicate a regression.
Regression tests will flag this immediately - before the change merges into the main codebase or ships to customers.

## An Analogy

Think of a running test with fixed parameters:

- A route
- A target time
- A number of stops

If every new training session checks the exact same parameters,
you can tell whether the runner is improving - or regressing.

Regression tests are the same test - just for the world of software and ML.

## Summary

Regression tests are the protective layer that ensures every change to a system:

- Doesn't break functions
- Doesn't hurt performance
- Doesn't lower model quality
- Doesn't change outputs unexpectedly
- And doesn't send the system backwards

In the world of ML - where it's very easy to create regressions -
regression tests are a necessity, not a recommendation.
