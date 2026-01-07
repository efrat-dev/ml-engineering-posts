---
language: "en"
title: "What is ViT - and Why is it a Paradigm Shift in Computer Vision?"
categories:
  - "Computer Vision"
tags:
  - "ViT"
  - "Transformers"
nextPost: "intern-vit.en"
slug: "vision-transformer-en"
---


# What is ViT - and Why is it a Paradigm Shift in Computer Vision?

In the world of AI, it was long believed that computer vision models should mimic the structure of images: convolutional layers sliding over pixels to detect local patterns. Then came ViT - Vision Transformer - and showed that we can think completely differently.

## What is ViT?

ViT is a Transformer model adapted for image processing.
Instead of treating an image as a continuous 2D array of pixels, ViT breaks it into a sequence of small “patches,” each represented as a token - just like words in a sentence.

This creates a series of tokens, which the Self-Attention mechanism processes just as it does in textual models.

## How Does It Work?

### Patch Embedding
The image is divided into small squares - for example, 16×16 pixels.
Each square is converted into a vector.

### Positional Encoding
Like in a sentence, we need to know the order and origin of each patch.
Thus, positional information is added to each patch.

### Transformer Layers
Self-Attention allows the model to learn relationships between every patch and every other patch - not just those physically close.

### Classification or Other Tasks
After processing, a global representation of the image is obtained, which is used for classification, detection, or more complex understanding.

## Why is it So Powerful?

The major advantage of ViT is its ability to view the entire image as a single unit.
In convolutional models (CNNs), the view starts locally and gradually builds up to a global structure.
ViT, on the other hand, enables immediate connections between all parts of the image - without distance limitations.

### This Provides:

- The ability to understand complex structures
- Flexibility for a variety of tasks
- Natural integration with textual models
- Reliance on the proven power of Transformer architectures

## The Drawback - and Its Solutions

The basic ViT requires significant computational power because every token “sees” every other token.
When the image is large, the number of tokens grows accordingly.

### Popular Solutions Include:

- Reducing patch resolution
- Using Hierarchical ViT (e.g., Swin Transformer)
- More efficient Attention mechanisms

Modern models like InternViT rely precisely on such innovations.

## The Analogy

ViT can be described as a team of experts not sitting in fixed rows but around a round table:

- Each expert can directly talk to any other.
- Everyone shares information in real-time.
- They understand the “big picture” faster than a hierarchical committee where information passes step-by-step.

This is why ViT excels at recognizing distant patterns and global components.

## Architectural Tip

When the tensor enters the ViT model, the patch size dramatically affects performance:

- Small patches → many tokens → detailed understanding but computationally expensive.
- Large patches → fewer tokens → faster processing but lower resolution.

In large inference systems, tuning the patch size to the business need is one of the key ways to maintain low response times.

## Conclusion

ViT marks the transition from a local to a global approach in image processing.
No more “layered scans,” but direct understanding of the entire image structure.
This idea has led to a new generation of vision models - and advanced lineages like InternViT and large multi-modal systems are built upon it.