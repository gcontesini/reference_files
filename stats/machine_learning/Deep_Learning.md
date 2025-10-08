# Deep Learning

[toc]

## What is Deep Learning?

Deep Learning is the use of of neural networks and differentiable programming to perform machine learning task. It lies within a combination of Artificial Intelligence, and Data Science. That is uses computation methods and inferences to organize, understand, explain solutions to tasks that require pattern recognition.

### Data Analysis Pipeline

In a deep learning class where we'll be studying neural networks in great depth, it would be easy to forget that a neural network, or any machine learning model is always part of a larger system. Before the data can arrive at a neural network, it has to be collected and processed into a form that a neural network can understand.

The outputs that a ANN produces, will often require post-processing or further analysis. Throughout the process of machine learning, it is helpful to keep in mind the metaphor of the data analysis pipeline.

> Data comes in and data comes out
>
> <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.dDUaqMPz0LdA8lWIR_Zh0AHaCZ%26pid%3DApi&f=1&ipt=09cbbcee16c0ee4c1b8b725320846d66645b7fe40a6593e254e15df468236ccb&ipo=images" alt="An illustrative black box system with input u k and output y k ..." style="zoom:67%;" />

This analogy emphasizes that our goal in machine learning is to transform observations of the world into predictions about the world, based on pattern found within the data provided, with the neural network serving as just one step in this broader process. The pipeline reminds us to consider the various stages our data goes through and how each stage feeds into the next. Different problems require different stages in the pipeline, and while standardized or simulated datasets may allow us to skip certain stages, applying deep learning to real-world problems necessitates a practical approach to data analysis.

#### Data Collection

The first stage in any data analysis pipeline is generally **collecting the data**. While pre-existing datasets are often used, solving new problems with deep learning requires identifying and gathering suitable data for training models. It is crucial to ensure a reasonable amount of data is available, as recent successes in deep learning have been largely driven by training on enormous datasets. However, when computing power is limited, working with smaller datasets can be beneficial for exploration and feasibility testing. A key challenge in data collection is ensuring that the **dataset is representative** of the problem being addressed. This includes making sure **all relevant classes are well-represented** and that **important outliers are included**. For instance, a computer vision model for self-driving cars must recognize unique cases like an Amish buggy and understand its slower movement compared to cars. Failure to include such examples can result in a poorly trained model.

Another critical issue in data collection is **identifying systematic biases within datasets**. Biases can range from **over-representation** of certain conditions, such as sunny weather in images for an image classifier, to broader **societal factors** influencing predictions about health or education outcomes. Addressing these biases is challenging and remains an active area of research in deep learning.

Once data has been collected, cleaning it up is often necessary before applying machine learning techniques. This involves addressing missing dimensions in the dataset—for example, health records might lack blood pressure readings for some cases—and deciding how to represent such missing values. Irrelevant dimensions, like patient ID numbers, should be excluded as they add randomness and distract from meaningful correlations. Additionally, mismatches in dimensions between examples must be resolved; for instance, image processing tasks may involve images of varying resolutions or aspect ratios that need standardization before being used as part of a training set.

Labeling data appropriately for supervised learning presents another challenge. For example, transcribing speech from American Sign Language videos requires significant effort to create accurate labels for training purposes. If the videos feature sign language interpreters with transcripts of spoken language, there may not be a one-to-one correspondence between what was signed and what was spoken aloud. It is essential to ensure labels accurately reflect what the model needs to learn about the data.

**Key take aways:**

- Do we have enough data?
- How much is too much data?
- Is the data in the correct format for our ANN?
- Do all instances have the same dimension?
- Is the data representative?
- Does it contain relevant or irrelevant features?
- Are the classes well, and evenly represented in the data?
- Is the data bias? Or does it contain outliers?
- How do we assign appropriate label to the data?

#### Pre-Processing

After collecting and cleaning the dataset so that it adequately represents the problem at hand, the next step involves formatting the data effectively for training neural networks or other machine learning models. This step ensures that the data is optimized for producing reliable predictions during model training.

In machine learning, **encoding data** numerically is essential since neural networks expect input in the form of vectors or matrices of numerical data. The process of devising an appropriate numerical encoding can vary significantly depending on the problem. For example, processing image data is relatively straightforward because the pixel-based representation that computers already use is well-suited for machine learning. However, processing text data is more challenging, as the ASCII format commonly used to store text files is not conducive to neural networks. Alternate representations of text data must be considered to make it suitable for training.

Transforming the representation of a dataset can also involve changing its dimensions or format to improve classification performance. For instance, linear models require data that can be separated by a linear decision boundary. If a dataset represented in Cartesian coordinates cannot be easily separated, transforming it into polar coordinates might create a clear decision boundary. In some cases, combining multiple representations—such as Cartesian and polar coordinates—can help achieve better separation by increasing the dimensionality of the data. This concept of altering representations or dimensions becomes increasingly important as problems grow in complexity.

Another consideration with numerical representations is normalization. Neural networks perform well when input values are in the range of 0 to 1, which aligns with how weights and parameters are typically initialized. For datasets with large ranges, such as pixel values from 0 to 255 or monetary amounts, normalization can compress these values into a smaller range suitable for training. After training, denormalization may be required as part of post-processing to revert the data back to its original scale.

One critical preprocessing step is splitting the dataset into a training set and a test set. This ensures that the model's predictions are tested on unseen data, allowing for an accurate evaluation of its performance. Holding back a portion of the dataset for testing helps validate the model's ability to generalize beyond the training data. The methods of splitting datasets and using test sets for tuning models will be explored further in subsequent discussions.

Post-processing steps are often necessary after data passes through a neural network. These include converting the network's output into meaningful predictions. For example, if categorical labels were encoded using one-hot vectors during training—where each dimension corresponds to a possible label—the network's output must be decoded back into the original label format for interpretation. Additionally, post-processing may involve conveying confidence levels in predictions or preparing outputs for further computation. For instance, predictions could be visualized to assist human interpretation, such as helping doctors make diagnoses, or formatted for integration into algorithms like those used in self-driving cars.

Finally, validation and tuning are crucial steps for ensuring model performance and identifying areas for improvement. These analyses rely on the test data held back during preprocessing and involve techniques to refine the model further. Validation and tuning will be discussed in greater depth in upcoming sessions focused on improving machine learning models.

#### Class Imbalance

Model selection involves choosing the best machine learning approach for a given problem. The first step is determining available options, which leads to the concept of a model's hypothesis space.

### Hypothesis Space

For a given machine learning model, the hypothesis space encompasses the types of functions it can represent. When training a machine learning model, the goal is to select the function that best represents the data. The hypothesis space describes the functions that could result from training. The problem constrains this space, particularly by the input representation chosen for the data (specifying dimension and other aspects) and the type of output required (discrete for classification, continuous for regression). Different machine learning algorithms and models impose constraints on the type of mapping between inputs and outputs that can be learned. For instance, single neuron models with sigmoid classifiers always identify a linear decision boundary, a rigid constraint. Non-linear decision boundaries require other models, such as neural networks with more nodes. Considering the hypothesis space can help determine if a model is appropriate for the problem.

### Hyperparameter Tuning

Once the type of model or machine learning algorithm is chosen, many aspects of the model can be tuned. Machine learning involves training the model's parameters using the dataset. These parameters are adjusted based on the data. In single neuron models, the weights and bias are updated during training. Larger neural networks have similar parameters, with weights and biases for every neuron. Some tunable aspects of the model are not updated during training, such as the step size (or learning rate) in gradient descent. The number of iterations for gradient descent is another hyperparameter that can be tuned but is not directly decided by training. As models become more complex, more hyperparameters become available. For neural networks, these include the number and connectivity of nodes, and the activation function used by non-output nodes.

### Model Selection Problem

The model selection problem involves choosing between different plausible models to best represent a dataset. This is closely related to hyperparameter tuning, which involves selecting hyperparameter values that best represent the data. These are fundamentally the same problem, as there may not always be a clear distinction between hyperparameters and different classes of models. In both cases, the goal is to determine which options will be most effective for a particular problem.

### Experimental Validation

The key idea is that these questions can be answered experimentally by separating a training set from a test set. The dataset (including input and output examples) is divided into a training portion and a separate test portion. The test portion is held back for out-of-sample validation. This allows for experimentation on how well models will generalize to data they haven't seen before, which is the entire goal of machine learning.

### Overfitting

Generalization is important to avoid overfitting, where a model is trained to be too specific to a particular dataset. While a model might perfectly represent the training set, it may not generalize well to new data. It's more valuable to conduct experiments to demonstrate which model is better at predicting unseen data. For example, instead of training on the entire dataset, randomly pick a few points to leave out of the training. Then, after running the training algorithm on the remaining points, assess which model performs better on the held-back points. A good starting point is an 80/20 split for training and testing, respectively.

### Hyperparameter Optimization

Multiple possible values for hyperparameters can be compared. While it may be systematic to explore all possible values for a single hyperparameter, it can be time-consuming to explore all combinations if there are multiple hyperparameters. Start by figuring out the plausible range for each hyperparameter. Try drastic changes to the learning rate to see if it makes a big difference. If not, fine gradations of the learning rate may not need exploration. It may also mean trying variations by more orders of magnitude to establish the bounds. If the interaction of several hyperparameters is thought to be important, varying them one at a time may not be enough. Establish the range for each parameter and then randomly choose from within that range. Randomization allows for a more diverse range of values to be explored more quickly, narrowing the plausible parameter values before a finer-grain search.

### Train/Validate/Test Split

Trying out many different values for several hyperparameters can lead to overfitting to the testing set. In that case, split the data even further into train, validate, and test sets. Parameters are set based on the training set, hyperparameters based on the validation set, and the test set is used to ensure the model generalizes.

### Cross-Validation

In some cases, there may be unhappiness with always validating on the same subset of the data. In that case, the entire dataset can be used for training and validation by averaging performance across several different test-train splits, known as cross-validation. For example, four-fold cross-validation involves splitting the data into four equal-size subsets. The model is trained on three-fourths of the data and tested on the remaining one-fourth, repeating this process and holding out each of the other fourths of the data. Performance is averaged across these different test sets to ensure the generalization performance observed wasn't specific to one subset of the data. Cross-validation can be expensive due to retraining the same model several times on different datasets. Therefore, splitting the data into training and test or training, validation, and test sets is often sufficient.



These approaches to model selection are a significant improvement over training on all available data and having nothing left to test whether the model can generalize.

## The Perceptron (Single Neuron Model)

A perceptron is the smallest unit of a Artificial Neural Network. In ANN, a perceptron correspond to a single node in layers of the network. It models a single neuron cell, that receives one, or more signals that computes its activation. In mathematical term a perceptron $\ell$ is a function that combine, weight and adds  all of the receiving inputs $a_i$ and computes an output signal $y_\ell$.
$$
y_\ell = f(\vec a,b)\\
f(\vec a,b) = w_o + \sum_{i=1}^N w_ia_i
$$
Here $y_\ell$, is the output signal, $\vec a$ is the input signals, $w_i$ correspond to the weights for each of the signals, and $w_o$ is the bias. The purpose for the bias term is to allow the sum to be zero even if the inputs are null. 

<img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.NeDNADa2HcWBRfJZRgkqDwHaEd%26pid%3DApi&f=1&ipt=164239bc39990c3dc4ef38982b6949d252b6b5b9fd8dbd5523be281d26c335ee&ipo=images" alt="How to Use a Simple Perceptron Neural Network Example to Classify Data ..." style="zoom:67%;" />

This model can be used for *regression* or for *classification*.

**Regression**

>  Regression is a supervised learning technique used to predict continuous numerical values based on the relationship between independent variables (features) and a class (target).

**Classification**

> Classification in machine learning refers to a predictive modeling task where the goal is to assign input data to one or more predefined categories or classes.

For any supervise learning problem, we will have a dataset of many example that will tell the model what the function should output. To be more specific, the dataset is a collection of vectors divided between features (a.k.a. variables, or factors), and targets (a.k.a. labels, or classes). 

## Learning Process



### Feed-Forward

### Feed-Backward

### Cross-Validation

Train: 80%, Test: 10%, Val: 10%

Train: 70%, Test: 15%, Val: 15%

At the end how do we incorporate all the parameters that were fitted to each fold

### Training 

The train set is the portion of data used to train the model. It contains labeled examples that the model learns from by identifying patterns or relationships in the data. During training, the model iteratively adjusts its parameters to minimize error on this dataset. A diverse and sufficiently large training set ensures the model generalizes well to unseen data. The most common pitfalls are over-fitting or under-fitting the data.

**Loss function**

> It is a metric that quantifies how wrong the model was in predicting (regression or labeling) the training dataset.

### Testing

The test set is used after training is complete to provide an unbiased evaluation of the model's final performance. It consists of data that the model has never seen before and answers the question: *How well does the model perform on unseen data?*

### Validation

The validation set is separate from the training set and is used during training to evaluate the model's performance.

### K-Folding Cross Validation

Cross-validation enhances model evaluation by reducing variance associated with a single train-test split.

**Stratified** 

## Artificial Neural Networks (ANN)

<img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.fSYU5rQsRAhCkjso_prcfAHaFE%26pid%3DApi&f=1&ipt=3905107b8cf79f8d993578b299b70a77f6ebbf8c632a27e81e1dd5137dd556a9&ipo=images" alt="How to Train a Multilayer Perceptron Neural Network - Technical Articles" style="zoom:67%;" />

### Training ANN



## ANN Architectures

### Single Layer Network

### Multilayer Network

### Competitive Network

### Recurrent Network

### Convolution Neural Networks (CNN)

#### Convolution

### U-NET

### Residual Neural Networks (ResNet)

## Transformers

### Attention Layer

### Perceiver Layer

### Tokenization

### Embedding 

### Un-embedding

## Large Language Model