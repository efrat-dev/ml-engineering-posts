---
language: "en"
title: "SDK vs Library vs Framework - What's the Difference?"
categories:
  - "Development Tools"
tags:
  - "SDK"
  - "Framework"
previousPost: "what-is-sdk.en"
slug: "sdk-vs-library-vs-framework-en"
---


# SDK vs Library vs Framework - What's the Difference?

## What's the Difference Between an SDK and a Framework?

Both terms show up in almost every software project, but they serve very different purposes.

### Framework - A Structure That Dictates How You Write Your Code

A Framework is a predefined "skeleton."
It determines how the application is built:

- Where you write code
- How classes are divided
- When your functions get called
- What the program's logical flow is

A Framework uses an Inversion of Control approach:
it's the one that calls your code - not the other way around.

**Examples:**
React, Django, Angular, FastAPI

A Framework is essentially a system you build on top of.

### SDK - A Toolkit for Using an Existing System

An SDK, on the other hand, doesn't dictate how to build your application.
It just provides the tools to talk to another system:

- Ready-made functions
- Convenient wrappers
- Libraries + documentation
- Testing and integration tools

An SDK exists to serve you -
not to manage your application.

**Examples:**
AWS SDK, OpenAI SDK, NVIDIA TensorRT SDK, Android SDK

With an SDK:
you call the tools → you control the flow.

With a Framework:
the framework calls your code → the flow is predetermined.

## Library vs SDK - What's the Difference?

Even though both are "ready-to-use code," they're fundamentally different.

### Library - A Collection of Functions That Add a Specific Capability

A Library is a collection of functions or classes you can use whenever you want.

It doesn't define:

- How to write code
- How to structure a project
- How to use it in a specific way

It simply provides specific capabilities.

**Examples:**
NumPy, OpenCV, Requests, Matplotlib

### SDK - Library + Infrastructure + Tools + Documentation

An SDK sometimes includes a library, but it's much bigger:

- Code examples
- Development tools
- Simulators
- Full documentation
- Build components
- Configurations
- Tools for communicating with a complex system
- And sometimes even a small Framework on top of the library

A Library is a single brick.
An SDK is an entire building kit.

## Summary in Three Sentences

- **Library** = a collection of functions you can call.
- **SDK** = everything you need to work with a system - libraries + tools + documentation.
- **Framework** = a structure that dictates how your application is built and runs.
