# What Is Imbalanced Data and How to Handle It?

Imbalanced data is a common problem in machine learning, which brings challenges to feature correlation, class separation and evaluation, and results in poor model performance. In this article, we will introduce:

-   Imbalanced data in practice
-   Three challenges with imbalanced data
-   Top 6 data sampling techniques
-   Sampling techniques comparison
-   Python code snippets

### Imbalanced data in practice

Imbalanced data is a term used to characterise certain types of datasets and represents a critical challenge associated with classification problems. It can be found in a myriad of applications including finance, healthcare, and public sectors. While no rigorous definition exists, it refers to a scenario where the number of samples associated with each class is highly variable. Let’s consider the following example:

**Example**

You are a bank employee responsible for detecting the **validity of credit card transactions.** To do so, you have a training set of previously observed transactions, each of which was either:

a) Normal

b) Fraudulent

Most transactions are normal and it is not unlikely that fraudulent account for **less than 0.1%** of the total transactions! Creating a model for this task can be tricky – considering only performance as given by an accuracy score, then a model always predicting “regular” will have a really high performance value!

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-1-1.png)

Figure 1. Data projection distribution on a transaction classification task

 

Figure 1 is a simple example that illustrates a standard imbalanced data scenario – fundamentally, the sparsity posed by the lowest sampled classes are very easy to ignore for any model! Not only this, but representative features for these classes are also harder to identify, and we expand on this in the next section.

### Three challenges with imbalanced data

To understand the challenges associated with imbalanced data, we first introduce some notations:

-   **The majority class** is the class with the highest number of samples;
-   **The minority class** is the class with the lowest number of samples;
-   **The class ratio** for a given dataset is defined as the ratio between the size of the minority class and the size of the majority class. **Empirically, data ratios of at least 25% do not affect performance by large margins.** This is no longer true, however, as the ratio becomes smaller.

Challenges rising from datasets with very small class ratios appear on 3 distinct fronts:

-   modelling and learning feature correlation properties for lower sampled classes;
-   detecting relevant feature class separation, i.e. identification of relevant features unique to each class;
-   addition of large bias to “standard” evaluation metrics which are generally designed for similar class sizes.

These issues could be mitigated at one of the following:

-   **Model-level:** Models can be modified to introduce heavier weighting to smaller representative classes, penalising more heavily errors in training prediction;
-   **Evaluation-level:** Alternative evaluation metrics must be used to account for class balance – note that this solves only the problem of performance evaluation, it does not actually lead to better model classification.
-   **Data-level:** Alternatively, the data itself can be transformed! If done in a smart way, new instances can be introduced in such a way to allow models to better model these classes. These methods fall under the name of data samplers, and are the topic of discussion for the next section.

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-2-1.png)

Figure 2. Data sampling techniques in action

 

### Top 6 data sampling techniques to handle imbalanced data

In this section, we go through the most common data sampling methods. **Data sampling refers to the class of algorithms that transforms a dataset (with regards to instances, not features)** – code implementation of these algorithms is at the bottom of this article. We consider the same input dataset as part of this method comparison.

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-3-1.png)

Figure 3. Original dataset – projected into 2 dimensions

 

1.   Random Under-Sampler (RU)

Arguably the most common sampling approach, the Random Under-Sampler performs a **downsampling** of the larger classes in the simplest way possible – randomly selecting available instances from each class. The number of instances sampled is defined as part of an acceptable class balance threshold and is therefore variable.

In general, RU ensures no data is artificially generated and all resulting data is a subset of the original input dataset. Nevertheless, for high degrees of imbalance, this usually leads to a great loss in available training data, and ultimately leads to reduced model performance.

2.   Random Over-Sampler (RO)

An alternative to RU, the Random Over-Sampler algorithm follows a similar technique in the opposite direction – as opposed to downsampling larger classes, **smaller classes are oversampled until the class sizes are balanced.** With oversampling, instances can (and do) appear multiple times.

RO solves the problem of data deletion (unlike the case of RU). Nevertheless, it introduces another bias in that samples are now repeated in the dataset. The effects caused by this is a bias towards focusing on the precise feature values of the repeated samples, as opposed to finding relevant separating regions and boundaries.

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-4-1.png)

Figure 4. Undersampling and Oversampling

 

3.   Synthetic Minority Oversampling Technique (SMOTE)

SMOTE is another algorithm to oversample smaller classes. The main idea behind SMOTE is that **generated instances should be constructed from available observations, but should not be identical.** SMOTE generates new instances of a minority class according to the following algorithm:

Borderline areas are approximated by support vectors after training a SVM classifier on the original training data set. Once computed, samples are synthesised next to the approximated boundary.

1.  Select a random pair of points from the same minority class, $x_i$, and $x_j$, where the latter is sampled from the k- neighbours of $x_i$.
2.  Sample uniformly a value t from a uniform distribution ($U[0, 1]$).
3.  Generate a new instance $x = t * x_i + (1-t) * x_j$.
4.  Repeat until number of samples is enough according to the oversampling ratio threshold (hyper-parameter).

SMOTE has shown widespread use and great success in various applications and tasks. It remains one of the most common oversampling mechanisms, and has led to a large family of variants, each with its own unique strong points and drawbacks. Ultimately, however, no variant of SMOTE has consistently been shown to improve on its power and performance.

4.   BorderlineSMOTE

BorderlineSMOTE is a variant of the SMOTE algorithm which makes the following assumption:
“Instances closest to a decision boundary are more relevant.“

As such, BorderlineSMOTE generates synthetic data along the decision boundary between 2 classes. For this scenario, a decision boundary is determined by looking at **misclassification within an instance’s K-neighbours.** If the set of K-closest points contains more than 1 class, then the instance is considered next to a decision boundary.

5.   SVM-SMOTE

SVM-SMOTE is similar to BorderlineSMOTE, with the notable difference of determination of decision boundaries and points closest to a boundary. SVM-SMOTE proposes usage of **a SVM algorithm for determining where multi-classification is taking place.**

Borderline areas are approximated by support vectors after training a SVM classifier on the original training data set. Once computed, samples are synthesised next to the approximated boundary.

6.   ADASYN

Adaptive Synthetic Sampling (ADASYN) is another variant of SMOTE, where a prior is added to the probability of point allocation, i.e., instead of focusing around a borderline decision region, ADASYN considers **data density** as the determining factor in identifying samples which are relevant to oversample.

The probability of selection is inversely proportional to the density of the minority class, so that **more synthetic data is generated where density of minority examples is low** (and vice-versa).

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-5-1.png)

Figure 5. Comparison of oversampling methods

 

### Sampling techniques comparison

It is important to note that the usefulness of a sampling method can only be determined down-stream, meaning evaluation occurs after providing the outputs of a sampling method to another task.

Why is this the case? Simply, there is no clear mechanism that can be used to determine if the sampled data output is **better** than the original data – by definition, the new data is better if it increases classification performance. Given this scenario, **comparison of oversampling methods can only be done by comparing accuracy/f1 score/recall/precision -type scores after re-sampling.** A key observation is that different samplings might have a different ordering in terms of performance with regards to different models.

### Python code snippets

The Python package imbalanced-learn (imported as imblearn) contains Python implementations of the above algorithms. The general process is illustrated below, as there are minimum differences between the different algorithms.

description:

```python
from imblearn.over_sampling import SMOTE
method = SMOTE(k_neighbors = 5,
              oversampling_strategy = "minority",
              seed = 1234,
              n_jobs = -1)
X_new, y_new = method.fit_resample(X, y)
```

-   **x** – The instances of the original dataset

-   **y** – The class labels for the instances of the original dataset.

-   **x_new** – The instances of the sampled dataset

-   **y_new** – The class labels for the instances of the sampled dataset.

-   **k_neighbors/n_neighbors**

    – (dependent on exact model) parameter determining the number of neighbours considered.

-   **oversampling_strategy**

    –
    The target distribution after sampling. Can be a string (such as “auto”, “minority”, “majority”) where classes are sampled to the same size, or can also be a dictionary where its key is the class labels and its values is target number of instance with those class labels

-   **seed** – Seed value for Random Number Generation.

-   **
    n_jobs(The default value is 1)
    **– The number of parallel jobs considered. -1 denotes “use all workers”.

### Find the best method to handle your imbalanced data with EvoML

Choosing the right method to generate more meaningful models is time-consuming and error-prone. [EvoML ](https://turintech.ai/product)can help you better understand the methods best suited for your project, with less time and effort.

Depending on the type of data you are working with, and the underlying ML model, EvoML **automatically identifying the features that are imbalanced** (see Figure 6) and by applying advanced techniques to **identify which sampling method works best.** Furthermore, EvoML uses active learning to continuously analyse various datasets and the methods used historically on the platform to give better suggestions.

EvoML automatically chooses and compares all those data sampling techniques as part of the search that happens when finding the best model for the input dataset. Additionally, EvoML exposes all available sampling methods to you, allowing intervention whenever you need.

![img](https://www.turintech.ai/wp-content/uploads/2022/01/insights-13-6-1.png)

Figure 6. Data feature analysis on EvoML platform 

#### **About the Author**

Henrique Aguiar | Intern at TurinTech Research Team

Henrique is a PhD student at the University of Oxford. He has a long experience with machine learning and data science, having completed internship and projects on fields such as Image Classification, Predictive Healthcare, and Genomics. As part of the research team at TurinTech, Henrique is working on optimisation of sampling techniques for the machine learning pipeline, in particular identifying optimal sampling methods and sampling strategies for a given dataset and modelling tool.