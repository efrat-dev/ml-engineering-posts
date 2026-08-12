---
language: "en"
title: "What's Really Behind the Quantization Formula?"
categories:
  - "Inference Optimization"
tags:
  - "Quantization"
  - "Inference"
previousPost: "quantization-en"
slug: "quantization-formula-en"
---


# What's Really Behind the Quantization Formula?

```
output = clamp(round(input / scale) + offset)
```

If you've worked with quantization in machine learning models,
this is probably one of the formulas you've seen over and over.
But what's actually happening here?

## Why Do You Even Need This?

Neural models usually work with "continuous" values (float32).
But on hardware, that's expensive - both in storage and at runtime.
That's why quantization is performed:
the continuous values are translated into integers (int8, for example)
in a way that preserves the meaning of the numbers, even if some precision is lost.

## Breaking Down the Formula

**input** - the original continuous value (say, 2.8 or -0.47).
The model "thinks" in decimal numbers, but the hardware needs integers -
and that's exactly what we're about to compute.

**scale** - this is the conversion factor between the continuous world and the integer world.
It determines how much to divide the original value by to bring it into the new range.

**offset** (also called the zero-point) - this shifts the zero point.
If you want all values to be non-negative (0 to 255 instead of -128 to 127),
you add an appropriate offset so zero "migrates" to the right place in the new range.
In simple terms: offset shifts the numbers to fit the memory layout the hardware expects.

**round()** - after scaling and shifting, we still have a decimal number.
At this stage it's rounded to the nearest integer,
because the processor doesn't work with fractional values when dealing with int8 or int16.

**clamp()** - this is the gatekeeper.
It makes sure the result doesn't exceed the allowed range - say, -128 to 127.
If we got a value of 150, it gets clipped to 127;
if we got -200, it becomes -128.
This prevents overflow errors that could corrupt the model's results.

## A Concrete Example

Suppose the model returned input = 2.8,
and we have scale = 0.1, offset = 0.

```
output = clamp(round(2.8 / 0.1) + 0)
       = clamp(round(28))
       = clamp(28)
```

The result is 28 - an integer that represents the continuous value "in compressed form," without exceeding int8's allowed range (-128 to 127).

## An Important Point About Choosing the Scale

It's important to choose a scale so that the entire possible input range actually fits into the integer range - including both endpoints.

For example: if you want to map a range of [-1.0, 1.0] to signed int8 (-128 to 127), scale = 1/127 is a better fit than scale = 1/128 - because with 1/128, the upper edge (1.0) rounds to 128, which is already out of range, and gets clipped by clamp() down to 127. This doesn't break the result (clamp handles it), but it does slightly hurt precision at the edges of the range - choosing a more precise scale solves this upfront.

## And What Happens in the Reverse Direction?

To reconstruct the original value (de-quantization), you use the inverse formula:

```
real_value = (output - offset) * scale
```

And that brings you back to the world of floats - with a small, predictable loss of information, but no destruction of the numerical meaning.
