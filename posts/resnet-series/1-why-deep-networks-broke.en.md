---
language: "en"
title: "Why Did Deep Networks Start \"Breaking\" - And What Problem Was ResNet Built to Solve?"
categories:
  - "Computer Vision"
tags:
  - "ResNet"
  - "Deep Networks"
series: "ResNet Series"
nextPost: "2-skip-connection-en"
slug: "1-why-deep-networks-broke-en"
---


# Why Did Deep Networks Start "Breaking" - And What Problem Was ResNet Built to Solve?

For years, in the world of computer vision, it seemed obvious that adding more layers to a model would give it more capability.
More depth, more processing, more understanding.
But in practice something confusing happened: when networks became very deep, their performance actually got worse.

This phenomenon was one of the major barriers to progress in the field, and it's the reason ResNet was born.

## What Is a "Deep Network," in Simple Terms?

A neural network is made up of a sequence of stages.
Each stage receives information, "processes" it in some way, and passes it forward.
When you add many stages, you get a deep network:
a long processing pipeline that handles an image step by step.

Intuitively, you can think of it like this:

- One layer sees lines.
- The next sees simple shapes.
- The third sees parts of objects.
- And eventually, a higher-level understanding emerges.

In other words, depth is supposed to give more capacity to learn complex structures.

## So Why Did Greater Depth Cause Performance to Decline?

This is where everyone was surprised.
As researchers added more and more stages, the network didn't improve.
It started making mistakes, getting confused, and even producing worse results than a shorter network.

The phenomenon wasn't caused by a lack of compute power, nor a lack of data.
It was something else:
depth added noisy complexity, and instead of improving understanding, it destroyed structures that already worked well.

In simple terms:

- Every layer tried to "reinvent" what it received.
- Instead of refining what already worked, the deep layers started distorting information.
- The deeper the network, the greater the chance that information would get corrupted along the way.

The result was a clear paradox:
a deeper network → worse performance.

## Why Did This Surprise the Research World?

Because it contradicted professional intuition:
a deeper network was supposed to be "smarter."
It just needed to learn gradually.
But in practice - networks failed to maintain stability as more stages were added.

A new approach was needed:
one that would allow the network to go deeper,
without later stages damaging what earlier stages had already managed to understand.

And that was the turning point.

## An Analogy

It's similar to a group of workers editing a large document one after another:

- The first worker writes a good draft.
- The second adds notes and improvements.
- The third also improves it - but already makes a few mistakes.
- The fourth adds more changes that get tangled with the previous ones.

At some point, the volume of changes accumulates too fast, and the document starts falling apart.

The problem isn't the idea of having multiple workers - it's that each one changes too much instead of preserving what was already good.

## What Should the Answer Have Been?

An approach was needed that would allow:

- Deepening the network
- Letting layers add new information
- Without damaging what already worked

In other words:
a network that allows "adding a small improvement," rather than rewriting everything at every stage.

And that's exactly the ground on which ResNet would be built.

## Conclusion

Before ResNet, the field was stuck facing a strange phenomenon: the deeper networks became, the less they learned.
This was both an engineering and a philosophical challenge: how do you build great depth without losing stability?

The next post in the series will show how one simple, conceptual solution - a small "shortcut" - completely changed the way deep networks are designed.
