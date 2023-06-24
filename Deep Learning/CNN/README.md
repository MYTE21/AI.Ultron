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

### Convolution on color images

Multiple features

Shape of bias term

### CNN Architecture

Modern CNNs originate from the LeNet.

Stage 1 [feature transformer]: (Convolution + Pool) + (Convolution + Pool) + ...

Stage 2 [nonlinear classifier / fully connected layers]: Dense + Dense + ...

There are 2 kinds of pooling: max and average. [Choosing which one to use is - hyper pragmatic choice]

Losing information

Hyperparameters

Alternative to Pooling: Stride

#### Full Arcitecture of CNN

Step 1:

* Conv > Pool > Conv > Pool > ...
* Strided Conv > Strided Conv > ...

Step 2:

* Flatten()
* GlobalMaxPooling2D()

Step 3:

* Dense > Dense > ...

`As usual, the 3 tasks determine the final activation / # of nodes:`

* Regression: None
* Binary Classification: sigmoid
* Multiclass classification: softmax

### CNN Code Preparation

* Step 1: Load in the data

  * Fashion MNIST and CIFAR-10
  * Fashion MNIST a drop-in replacement for MNIST
  * Still 28*28 grayscale: t-shirt, shoes, pants etc.
  * CIFAR-10: 32*32*32 color - automobile, frog, horse, cat, dog.
* Step 2: Build the model

  * CNN: just an ANN with Conv layers
  * Functional API: a better way of creating models
* Step 3: Train the Model
* Step 4: Evaluate the model
* Step 5: Make predictions
* Later on: data augmentation: Makes Step #3 a little different

`Loading in the data`

```python
# Fashion MNIST
tf.keras.datasets.fashion_mnist.load_data()

# CIFAR-10
tf.keras.datasets.cifar10.load_data()
```

```python
(x_train, y_train), (x_test, y_test) = load_data()
```
`Fashion MNIST`
* Drop-in replacement for MNIST, exact same format
* X.shape = N * 28 * 28 (grayscale)
* Pixel values 0 ... 255
* Not the right shape for CNN! CNN expects N * H * W * C
* We must reshape to N * 28 * 28 * 1

`CIFAR-10`
* Data is N * 32 * 32 * 3, pixel values 0 ... 255
* Slight inconvenience: labels are N * 1
* Just call flatten() to fix it

`Build the model`
`Functional API`
`Conv2D Arguments`
`Dropout for Convolution`

