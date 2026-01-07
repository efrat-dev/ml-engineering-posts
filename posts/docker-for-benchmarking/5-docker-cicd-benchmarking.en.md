---
language: "en"
title: "How to Integrate Docker into CI/CD for Automated Inference Benchmarking"
categories:
  - "Infrastructure"
tags:
  - "Docker"
  - "CI/CD"
series: "Docker for Benchmarking"
previousPost: "4-docker-inference-benchmarking.en"
nextPost: "null"
slug: "5-docker-cicd-benchmarking-en"
---


# How to Integrate Docker into CI/CD for Automated Inference Benchmarking

In the previous posts, we discussed how Docker ensures a consistent and reliable testing environment.
But in the real world - we don’t want to run benchmarks manually every time a model or engine changes.
This is where the next step comes in: full automation using CI/CD.

## What Does This Mean?

CI/CD (Continuous Integration / Continuous Deployment)
is a process where every code change (e.g., an updated model or a new inference version)
triggers an automated testing pipeline - including benchmarking.

The goal: to know immediately if a change improved or hurt performance.

## How Docker Fits Into This Process

- **Docker Image as a Fixed Work Unit**
  Every benchmark run is done from the exact same Image - with the same libraries, CUDA versions, etc.
  This ensures that the measurement compares apples to apples.

- **Pipeline Running the Container**
  For every commit or model change, the CI (e.g., Jenkins, GitHub Actions, or GitLab CI)
  pulls the Docker Image and runs the tests inside it.

- **Performance Measurement and Result Collection**
  The scripts inside the container measure response times, memory usage, and throughput.
  The results are automatically sent to a log or a dedicated dashboard.

## A Simple Example of a Typical Workflow

1. A new model change is pushed to the main branch.
2. The CI triggers a container with the testing environment.
3. An inference benchmark is performed on a fixed dataset.
4. The results are compared to the previous version.
5. If there’s a performance drop - an automatic alert is sent.

## Why is This Important?

- **Full Consistency** - Every run is identical to the previous environment.
- **Quick Feedback** - Every change is automatically tested.
- **Historical Tracking** - It’s easy to see how each change affected performance over time.

## Conclusion

Integrating Docker into CI/CD is the way to make benchmarking something that happens automatically,
accurately, consistently, and quickly.
Instead of “running when there’s time,” it becomes part of the DNA of the development process -
ensuring that the model is always truly improving, not just changing.
