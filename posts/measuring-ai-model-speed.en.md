---
language: "en"
title: "How Do You Measure the Speed of an AI Model?"
categories:
  - "Performance Metrics"
tags:
  - "Throughput"
  - "Latency"
previousPost: "bottlenecks-in-inference.en"
nextPost: "behind-the-scenes-inference.en"
slug: "measuring-ai-model-speed-en"
---


# How Do You Measure the Speed of an AI Model?

When we talk about a fast model, what do we actually mean?
Two main metrics determine the user experience during inference - the phase where the model is already trained and returns answers:

## TTFT - Time To First Token

The time it takes for the model to start speaking.
Just like in a human conversation - how long it takes from the moment you ask a question until the other side utters the first word.
TTFT directly affects the perception of “how responsive the system feels.”

## TPS - Tokens Per Second

How quickly the model continues to speak after it starts.
This is the rate at which it “writes” or generates new tokens (small text units).
TPS affects how quickly you get a complete answer.

## Balancing the Two

If we shorten TTFT too much - TPS might suffer (the model starts quickly but stalls midway).
If we prioritize high TPS - the start time might increase.
Performance engineers focus precisely on this balance - how to make the model start quickly and continue smoothly.

## Bottom Line:

TTFT = Perceived responsiveness.

TPS = Continuous work rate.

Proper balance between them = Perfect user experience.
