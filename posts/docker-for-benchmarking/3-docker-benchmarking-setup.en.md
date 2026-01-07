---
language: "en"
title: "How to Build a Benchmarking Environment with Docker (Including GPU)"
categories:
  - "Infrastructure"
tags:
  - "Docker"
  - "Benchmarking"
series: "Docker for Benchmarking"
previousPost: "2-docker-images-containers.en"
nextPost: "4-docker-inference-benchmarking.en"
slug: "3-docker-benchmarking-setup-en"
---


# How to Build a Benchmarking Environment with Docker (Including GPU)

In the previous post, we discussed why Docker is essential for fair benchmarking.
Now let’s understand how to actually use it to run reliable and fast benchmarks for models.

## Step 1: Create a Consistent Docker Environment

Let’s say you want to measure the performance of two different inference engines (e.g., ONNX Runtime and TensorRT).
Instead of installing each one manually, create a separate Docker Image for each,
where the exact dependencies and versions are defined.

For example:

- A specific version of CUDA (to ensure GPU compatibility)
- The exact version of Python and libraries
- Your benchmarking and measurement script

This way, every model and engine runs under identical conditions.

## Step 2: Connect the GPU to the Container

To measure real performance - the Docker container must directly access the GPU.
For this, use NVIDIA Docker (or nvidia-container-runtime),
which adds a hardware access layer from within the container.

The result: the code inside the container “sees” the GPU as if it’s part of it,
while still maintaining full isolation from the system.

## Step 3: Run Accurate Benchmarks

Now you can run the measurements:
each experiment runs in the same container, under the same conditions, with only one change -
for example, a different engine version, a different batch size, or a different precision (FP16 vs. INT8).

Docker allows you to run everything in a controlled manner and save all the data for repeatable comparisons.

## Why is This Critical?

- **Full Reproducibility** - You can rerun the same experiment a month later and get exactly the same result.
- **Portability** - Your lab can share the same container with another team,
  and they’ll get the exact same testing environment.
- **Reliability** - No external factors (like drivers or system versions) will affect the result.

## Conclusion

Docker turns benchmarking from “an experiment on my machine” into precise science.
When combined with GPU support, it allows for truly fair testing
of which engine or model delivers the best performance -
without noise, surprises, and with full confidence in the result.
