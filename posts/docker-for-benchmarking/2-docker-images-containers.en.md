---
language: "en"
title: "What are Docker, Images, and Containers?"
categories:
  - "Infrastructure"
tags:
  - "Docker"
  - "Containers"
series: "Docker for Benchmarking"
previousPost: "1-docker-intro.en"
nextPost: "3-docker-benchmarking-setup.en"
slug: "2-docker-images-containers-en"
---


# What are Docker, Images, and Containers?

When we talk about Docker, we’re talking about a way to run software consistently anywhere - on your computer, on a company server, or in the cloud.
The idea is simple: wrap the application and everything it needs to work - and run it as a separate unit.

## Let’s Start with the Basics:

### Image - Like a Template or “Recipe”

Think of an Image as a “baking template” that contains:

- The required operating system (e.g., minimal Ubuntu),
- All the libraries, drivers, and files your application needs,
- And the instructions for running it.

Each Image is a static file - meaning it doesn’t run by itself but serves as the basis for running a container.

### Container - Like a “Cake” Baked from the Template

When you run an Image, it creates a live unit - a Container.
The Container is an application running in isolation:
it has its own files, memory, even its own “mini operating system” -
but it still uses your computer’s resources (CPU, GPU, memory, etc.).

In other words:

- **Image** = Template
- **Container** = A live instance of the template

### Docker - The Tool That Manages It All

Docker is the tool that allows you to build, run, and manage Images and Containers.
It ensures that everything works the same way in every environment, regardless of what’s installed on the machine.

## Why is This So Important in Machine Learning?

ML projects have many components - models, GPU libraries, drivers, CUDA versions, etc.
Even a small change can cause a model to run differently or not run at all.

Docker solves this:

- You can create a single stable Image with everything the model needs.
- Run it on any computer or server - and get the exact same result.
- Update versions or run experiments without “breaking” what already works.

## A Simple Example

Let’s say you have an image recognition model.
Instead of installing Python, CUDA, and libraries every time, you create a Docker Image that contains all of it.
Now you can run it on your laptop, a GPU server, or in the cloud - without reconfiguring anything.

## Conclusion

| Concept      | Role                              | Analogy               |
|--------------|-----------------------------------|-----------------------|
| **Image**    | Template defining how to run an app | Recipe               |
| **Container**| The actual running instance of the Image | A baked cake         |
| **Docker**   | The tool managing both            | The oven running the process |
