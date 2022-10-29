### What is Convolution?

A convolution neural network is a "neural network with convolution".

It is used in - signal processing, computer vision.

There are only 2 requirements:

1. Can you add?
2. Can you multiple?

Convolution is just adding and multiply.

**The Mechanics of Convolution**

* Exercie: Write pseudocode for CNN
  * If input had length 4, Kernel had length 2, Output had length 3
  * Why?
  * Claim: If Input length = N, Kernel lenght = K, Output lenght = N - K + 1

Convolution Equation?

cross-correlation

what is "mode"?

Padding ("same" mode)

Even more padding ("full" mode)

**Summary of Modes:****


| Mode   | Output Size | Usage    |
| ------ | ----------- | -------- |
| Valid* | N - K + 1   | Typical  |
| Same*  | N           | Typical  |
| Full   | N + K - 1   | Atypical |

Vectorization

Parameter sharing / Weight sharing

Translational Invariance
