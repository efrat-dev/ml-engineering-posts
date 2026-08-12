---
language: "en"
title: "Yocto: Why Build a System Instead of Just \"Installing Linux\""
categories:
  - "Development Tools"
tags:
  - "Yocto"
  - "Embedded"
nextPost: "yocto-inference-en"
slug: "yocto-en"
---


# Yocto: Why Build a System Instead of Just "Installing Linux"

When working with embedded systems, the first question is often:
"which distro should we install?"

This is where Yocto shifts the perspective.

Yocto is not a distro.
It's a way to build a system.

On a regular computer, Linux arrives ready-made:
files, services, tools, assumptions.

On an embedded system -
those assumptions are exactly the problem.

There's no "standard" disk.
There's no "regular" user.
There are no unnecessary services you can afford to keep.

Here you need to control what exists -
and mainly, what doesn't.

## The Right Question

Yocto lets you start from the right question.

Not
"which system should we install?"

But
"what must the system contain -
and what would be better left out entirely?"

Yocto is a build system for Linux
that lets you assemble a precise image:

- kernel
- filesystem
- libraries
- and userspace tools

Everything is defined in advance,
and everything is reproducible.

Not manual.
Not one-off.
Not dependent on the machine it was built on.

## The Power of Yocto Is Control

Control over:

- versions
- dependencies
- size
- boot times

Every component is there because you chose it.
Not because it arrived by default.

This is also why Yocto feels "heavy" at first.

There are:

- layers
- recipes
- build configurations

But this isn't unnecessary complexity -
it's declared complexity.

Instead of a system that looks simple
but hides thousands of decisions,
Yocto forces you to make the decisions yourself.

## Reproducibility

Another critical point: reproducibility.

A system built with Yocto:

- can be rebuilt a year later
- can be duplicated across teams
- and stays consistent between development and production

It's not "works on my machine."
It's "built by definition."

## The Analogy

Buying a ready-made house -
or designing a house for your exact needs.

The first is faster.
The second truly fits.

## Summary

Yocto isn't right for every project.
But it's excellent when you need a system that's:

- small
- predictable
- controlled
- and stable over time

It's not a build tool.
It's an architectural choice.

Because in embedded systems,
what you leave out
matters just as much as what you include.
