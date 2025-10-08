# Linear Discriminant Analysis (LDA)

[TOC]

## Overview

Linear Discriminant Analysis (LDA) is a supervised statistical and machine learning technique used for both classification and dimensionality reduction, especially when separating two or more classes based on input features.

## Core Concept

LDA seeks a linear combination of features that best separates or characterizes two or more classes, maximizing the distance between class means (between-class variance) and minimizing the variance within each class (within-class variance). This leads to the clearest distinction possible between categories when projected onto a new axis or subspace.

## How LDA Works

- LDA projects high-dimensional data onto a lower-dimensional space, typically where the axes are chosen to best separate the groups.
- It derives new features (called discriminant functions or axes) that emphasize the differences between the classes.
- The number of discriminant functions is at most one less than the number of classes, or the number of features, whichever is smaller.

## Key Assumptions

- The data within each class follow a Gaussian (normal) distribution.
- All classes share the same covariance structure, meaning the scatter (spread) of features within each class is similar.
- The data can be separated using linear boundaries (i.e., by a straight line or plane).

## Mathematical Foundation

LDA uses information about class means and covariances to create a scoring function:

- It maximizes the ratio of between-class to within-class variance.
- This can be formalized using scatter matrices, where the projection aims to maximize trace(SB)/trace(SW)trace(*S**B*)/trace(*S**W*), with SB*S**B* being the between-class and SW*S**W* the within-class scatter matrices.
- The resulting function divides the feature space into regions associated with each class.

## Typical Applications

- LDA is widely used in pattern recognition, face recognition, bioinformatics, and as a preprocessing step for other machine learning tasks where reducing dimensionality while preserving class separability is crucial.
- It is also a standard technique for evaluating and visualizing class structure in multivariate data.
- 
## Step-by-Step

### Step 1: Prepare Data and Classes

Suppose you have a dataset with points belonging to two groups (classes). For example, two features (like height and weight) measured for individuals labeled as Group 1 and Group 2.

### Step 2: Calculate Mean Vectors for Each Class

Calculate the mean (average) of each feature for each class separately. This gives you two mean vectors.

### Step 3: Compute Scatter Matrices

- **Within-class scatter matrix (S_W):** Measures how much the data points vary within each class.
- **Between-class scatter matrix (S_B):** Measures how far apart the class means are from the overall mean.

Calculate the scatter matrices using the points and means.

### Step 4: Find the Optimal Projection Vector

Compute a vector $ \mathbf{w} $ that maximizes the separation between classes. This is done by solving the equation:

$$
\mathbf{w} = S_W^{-1} (\mathbf{m}_1 - \mathbf{m}_2)
$$

where $ \mathbf{m}_1 $ and $ \mathbf{m}_2 $ are the mean vectors of the two classes.

### Step 5: Project Data onto New Axis

Project all data points onto the vector $ \mathbf{w} $ by calculating the dot product of each point's feature vector with $ \mathbf{w} $. This reduces the data to one dimension.

### Step 6: Classify New Points

Determine a threshold value (usually between the projected means) to classify new points. If the projection of a new point is closer to class 1 mean projection, assign it to class 1; otherwise, to class 2.


This process helps find a line (in 2D) or hyperplane (in higher dimensions) that best separates the classes by maximizing between-class variance and minimizing within-class variance.

Would you like a detailed numeric example next? This can be demonstrated with specific data points to calculate means, scatter matrices, and projection vectors explicitly.

## numerical example

Here is a simple numerical example of linear discriminant analysis (LDA) step by step without software:

### Data:

Two classes with two features each:


| Class | Feature 1 | Feature 2 |
| :---- | :-------- | :-------- |
| 1     | 2.95      | 6.63      |
| 1     | 2.53      | 7.79      |
| 1     | 3.57      | 5.65      |
| 1     | 3.16      | 5.47      |
| 2     | 2.58      | 4.46      |
| 2     | 2.16      | 6.22      |
| 2     | 3.27      | 3.52      |


***

### Step 1: Calculate mean vector for each class

Class 1 means:

$$
\mu_1 = \left(\frac{2.95 + 2.53 + 3.57 + 3.16}{4}, \frac{6.63 + 7.79 + 5.65 + 5.47}{4}\right) = (3.0525, 6.385)
$$

Class 2 means:

$$
\mu_2 = \left(\frac{2.58 + 2.16 + 3.27}{3}, \frac{4.46 + 6.22 + 3.52}{3}\right) = (2.67, 4.7333)
$$

***

### Step 2: Calculate within-class scatter matrices

For each class, calculate the covariance-like scatter matrix:

$$
S_1 = \sum (x_i - \mu_1)(x_i - \mu_1)^T, \quad S_2 = \sum (x_i - \mu_2)(x_i - \mu_2)^T
$$

For example, for Class 1, subtract mean from each feature vector, then multiply by transpose and sum.

***

### Step 3: Calculate total within-class scatter matrix

$$
S_W = S_1 + S_2
$$

***

### Step 4: Calculate the optimal projection vector

$$
\mathbf{w} = S_W^{-1} (\mu_1 - \mu_2)
$$

Calculate inverse of $ S_W $, multiply by difference of mean vectors.

***

### Step 5: Project samples onto $\mathbf{w}$

For each sample $ x $, compute the projection $y = \mathbf{w}^T x $.

***

### Step 6: Classify new samples

Set threshold between projected class means. If new sample projects closer to Class 1 mean projection, assign to Class 1, else Class 2.



[^1]: https://apsl.tech/en/blog/using-linear-discriminant-analysis-lda-data-explore-step-step/

[^2]: https://people.revoledu.com/kardi/tutorial/LDA/Numerical Example.html

[^3]: https://www.statology.org/linear-discriminant-analysis-in-r/

[^4]: https://www.geeksforgeeks.org/machine-learning/ml-linear-discriminant-analysis/

[^5]: https://www.ibm.com/think/topics/linear-discriminant-analysis

[^6]: https://www.youtube.com/watch?v=julEqA2ozcA

[^7]: https://www.kaggle.com/code/davidperezhurtado/linear-discriminant-analysis-lda-from-scratch

[^8]: https://www.machinelearningmastery.com/linear-discriminant-analysis-for-machine-learning/

[^9]: https://online.stat.psu.edu/stat505/lesson/10/10.3

