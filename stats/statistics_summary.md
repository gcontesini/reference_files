# Statistics a quick summary

[[_TOC_]]

## Descriptive Statistics

### Centrality

| Statistics          | Formula                                                      | Use                                          |
| ------------------- | ------------------------------------------------------------ | -------------------------------------------- |
| Arithmetic Average  | $\mu = \frac{1}{N}\sum_{i=1}^{N}x_i$                         | Additive processes                           |
| Geometric Average   | $\mu = \sqrt[N]{\prod_{i=1}^{N}x_i}$                         | Cumulative, Multiplicative Processes         |
| Weighted Average    | $\mu = \frac{1}{\sum_{i=0}^{N}a_i}\sum_{i=1}^{N}a_ix_i$      | Uneven or bias processes                     |
| Harmonic Average    | $\mu = \frac{N}{\sum_{i=1}^{N}\frac{1}{x_i}}$                | Parallel, Relative, Ratios Processes         |
| Generalized Average | $\mu =(\prod_{i=1}^{N}x_i^p)^\frac{1}{p}$                    | Mean Squared Deviation, Power, Error Systems |
| Bayesian Average    | $\mu = \frac{Cm+\sum_{i=1}^{N}}{C+N}$                        | Layer, Additive                              |
| Median              | Middle value separating the greater and lesser halves of a data set | Robust to rare events                        |
| Mode                | Most frequent value in a data set                            | Categoric values                             |

### Dispersion

| Statistics                 | Formula                                                      | Usage      |
| -------------------------- | ------------------------------------------------------------ | ---------- |
| Standard Deviation         | $\text{SD} = \sqrt{\frac{1}{N-1}\sum_{i=1}^{N}(x_i-\mu)^2}$  | All        |
| Median Absolute Difference | $\text{MAD} = \sqrt{\frac{1}{N-1}\sum_{i=1}^{N}|x_i-\text{median}(x)|^2}$ | Robust[^1] |
| Range                      | $\text{range}(X) = \max(X) -\min(X)$                         | Robust     |
| Interquartile Range        | $\text{IQR}(X) = 3rd - 1st$                                  | Robust     |
| Median Absolute Deviation  | $\text{MAD} = \text{median}(\abs{x_i-\text{median}(x_i)})$   | Robust     |

[^1]: An robust statistic means that this metric is not heavily influenced by outliers or extreme values.

### Higher Statistics

Skewness

Kurtosis

## Hypothesis Tests

### Necessary and Sufficient conditions

#### Normality

[Shapiro Test](##Test for Distribution)

[Kuiper Test](##Test for Distribution)

[$\chi^2$ Test](##Test for Distribution)

[q-q plot](## Test for Distribution)

[p-p plot](## Test for Distribution)

If Fail:

-   [Box Cox](##Transformations)
-   Non-parametric tests

<img src="./x1_mathematics/x1_statistics/images/Normprob.png" alt="Normprob" style="zoom: 33%;" /> <img src="./x1_mathematics/x1_statistics/images/Normexpprob.png" alt="Normexpprob" style="zoom: 33%;" /> <img src="./x1_mathematics/x1_statistics/images/Normunifprob.png" alt="Normunifprob" style="zoom: 33%;" />

<img src="./x1_mathematics/x1_statistics/images/Normhist.png" alt="Normhist" style="zoom:33%;" /> <img src="./x1_mathematics/x1_statistics/images/Normexphist.png" alt="Normexphist" style="zoom:33%;" /> <img src="./x1_mathematics/x1_statistics/images/Normunifhist.png" alt="Normunifhist" style="zoom:33%;" />

#### Independence of samples

[Autocorrelation](##Correlation/Covariance)

If Fail:

-   Bootstrap
-   Jackknife
-   Blocking rescaling
-   MLE Resampling

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Correlation_examples2.svg/1920px-Correlation_examples2.svg.png" alt="undefined" style="zoom: 25%;" />

#### Homogeneity of variance
also known as sphericity (for dependable variables) or homoscedastic.

[F-test](##Variance)

if Fail:

-   [Box-Cox](##Transformations)

<img src="./x1_mathematics/x1_statistics/images/Homoscedasticity.png" alt="Homoscedasticity" style="zoom: 75%;" /><img src="./x1_mathematics/x1_statistics/images/Heteroscedasticity.png" alt="Heteroscedasticity" style="zoom: 75%;" />



### Mean

| Parametric [^1]                | <u>Single Sample </u>$a\rightarrow B$ | <u>Single Groups</u> $A\rightarrow B$ | <u>Multiple Groups</u> $A\rightarrow B \rightarrow C$ |
| ------------------------------ | -------------------- | ------------------------------------ | ----------------------------------------------------------- |
| <u>**Independent samples**</u> | Student t-test (one-sample) | Student t-test (two-sample), Welch's[^a] | ANOVA (one-way)                               |
| <u>**Dependent samples**</u>   | Paired t-test [^2]   | MANOVA[^b] , Bonferroni-Holm[^c]     | Repeated MANOVA                                             |

---

| **Non-Parametric**  | <u>Single Sample</u> $a\rightarrow B$ | <u>Single Groups</u> $A\rightarrow B$ | <u>Multiple Groups</u> $A\rightarrow B \rightarrow C$ |
|--------------------|------|------|------|
| <u>**Independent samples**</u> | Signed-Rank | Mann-Whitney, Mood's Median | Kruskal-Wallis |
| <u>**Dependent samples**</u> | Sign test | Wilcoxon test | Friedman test |

[^1]: The distributions must satisfy [normality](####Normality), [homoscedastic](####Homogeneity of variance), [non-correlated](####Independence of samples)
[^a]:When only the variances within the two dependable distributions are not equal.

[^b ]: Used for when the distributions have multiple multiple dependable variables.
[^c]: Used to counteract the effects of multiples independent variables within the distribution.

### Variance

| **Parametric:** | <u>Pair of Sample</u> | <u>Multiple Groups</u> |
| ---- | ---- | ---- |
| <u>**independent variables**</u> | F-Test | Levene's test (Robust), Bartlett Test (Sensitive) |


| Non-Parametric | <u>Pair of Sample</u> | <u>Multiple Groups</u> |
| ---- | ---- | ---- |
| <u>**Dependent Variables**</u> | Brown-Forsythe | Conover Squared Rank Test (Squared rank Test) |



### Correlation/Covariance

| **Parametric**  | <u>Pair Variable</u> | <u>Multi Variable</u> |
| -------------- | ---- | ---- |
| <u>**Independent , Dependent Variables **</u> | Co-variance (Pearson test) | RV coefficient         |
| <u>**Dependent , Dependent Variables **</u> |        Correlation (Auto-correlation)        | Cross-correlation |

---

| **Non-Parametric** (Ordinal Variable) | <u>Pair Sample</u> | <u>Multi Sample</u> |
| ------------------ | ---- | ---- |
| <u>**Independent , Dependent Variables **</u> | Spearman $\tau$ rank test | Paired Spearman $\tau$ rank test |
| <u>**Dependent , Dependent Variables **</u> | Spearman $\tau$ rank test | Paired Spearman $\tau$ rank test |

---

| **Non-Parametric** (Nominal Variable)                        | <u>Pair Sample</u>       | <u>Multi Sample</u>        |
| ------------------------------------------------------------ | ------------------------ | -------------------------- |
| <u>**Independent , Dependent Variables ("Nominal Variance")**</u> | Cohen $\kappa$ test      | Paired Cohen $\kappa$ test |
| <u>**Independent , Independent Variables **</u>              | Cohen $\kappa$ test [^2] | Paired Cohen $\kappa$ test |

---

| Auto Correlation | Dependent Variable     | Independent Variable    | Residue                   |
| ---------------- | ---------------------- | ----------------------- | ------------------------- |
| **Regression**   | Breusch–Godfrey test   | Breusch–Pagan test      | Durbin–Watson statistic   |
| **Time-Series**  | Box–Pierce test (Weak) | Ljung–Box test (Medium) | Portmanteau test (Strong) |



## Laws and Inequalities

### Law of large numbers (LLN)

 LLN states that the *sample mean* converges to the *expected value* from the pdf, given that you have a *sufficiently large* set sample of *independent* and *identically distributed* values.

"Statistics converges to Probability if you have large enough samples." 

### Central limit theorem

The average of average measurements always follow a normal distribution

### Markov's inequality

$P(X>c) \approx\frac{E[x]}{C}$

### Chebyshev's inequality

$P(|X-\mu|\geq k\sigma) \leq\frac{1}{k^2}$



|     $k$     | Min. $\%$ within $k$ standard deviations of mean | Max. $\%$ beyond $k$ standard deviations from mean |
| :---------: | :----------------------------------------------: | :------------------------------------------------: |
|     $1$     |                      $0\%$                       |                      $100\%$                       |
| $\sqrt{2}$  |                      $50\%$                      |                       $50\%$                       |
|    $1.5$    |                    $55.55\%$                     |                     $44.44\%$                      |
|     $2$     |                      $75\%$                      |                       $25\%$                       |
| $2\sqrt{2}$ |                     $87.5\%$                     |                      $12.5\%$                      |
|     $3$     |                   $88.8888\%$                    |                    $11.1111\%$                     |
|     $4$     |                    $93.75\%$                     |                      $6.25\%$                      |
|     $5$     |                      $96\%$                      |                       $4\%$                        |
|     $6$     |                   $97.2222\%$                    |                     $2.7778\%$                     |
|     $7$     |                   $97.9592\%$                    |                     $2.0408\%$                     |
|     $8$     |                   $98.4375\%$                    |                     $1.5625\%$                     |
|     $9$     |                   $98.7654\%$                    |                     $1.2346\%$                     |
|    $10$     |                      $99\%$                      |                       $1\%$                        |



## Distributions

| Discrete   |                     |
| ---------- | ------------------- |
| Kronecker  | Poison              |
| Binomial   | Uniform (Discrete)  |
| Bernoulli  | Zipf's              |
| Geometric  | Hypergeometric      |
| Degenerate | Newcomb-Benford law |

---

| Continuous           |                         |
| -------------------- | ----------------------- |
| Normal (Gaussian)    | Irwin–Hall              |
| Laplace              | Maxwell-Boltzmann       |
| Dirac Delta          | Exponential             |
| F-distribution       | Lévy                    |
| Chi-Squared          | Fermi-Dirac             |
| Weibull              | Bose Einstein           |
| Student-t            | Maxwell–Jüttner (speed) |
| Uniform (Continuous) | Kolmogorov              |
| Heaviside            | Gompertz                |
| Pareto               | Beta                    |
| Logistic             | Gamma                   |
| Rayleigh             | Triangular              |
|                      | Zeta                    |

## Test for Distribution

| Visual   | Meaning                                                      |
| -------- | ------------------------------------------------------------ |
| q-q plot | plotting their quantiles against each other.                 |
| p-p plot | plots the two cumulative distribution functions (cdf) against each other |

<img src="./x1_mathematics/x1_statistics/images/Normal_normal_qq.svg" alt="Normal_normal_qq" style="zoom: 90%;" /><img src="./x1_mathematics/x1_statistics/images/Normal_exponential_qq.svg" alt="Normal_exponential_qq" style="zoom: 90%;" />  <img src="./x1_mathematics/x1_statistics/images/1440px-Probability-Probability_plot,_quality_characteristic_data.png" alt="Normal_normal_qq" style="zoom: 25%;" />

| <u>Analytical</u> | Meaning |
| -------------- | ---- |
| Likelihood test (Wilk-test) | Test if a sample distribution agree with the population (Strongest test) |
| Welch's test | Test if a sample distribution agrees with the population (normal) |
| $\chi^2$ test | Test if a sample distribution agree with the population (non-normal) |
| $\chi^2$ test - for $(N<10)$ | For $N<10$ use the Yates Corrections [^8] |
| Kuiper test|Test if a sample distribution agree with the population|
| Kolmogorov-Smirnov test | Test if a sample distribution agree with the population (uses the cumulative distribution) |
| Shapiro-Wilk test | Test if a sample distribution is normal (test for normality) |
| Hosmer–Lemeshow test | Test if a sample distribution follow a logistic population |
| Mood's median test | Test if a sample distribution agree with the population (non-parametric) |
| Anderson–Darling test | Test if a sample distribution agree with the population (non-parametric) |


[^1]: Assumptions for Parametric Test:

1. Both samples are normally distributed.
2. Variances of two samples are not significantly different.

[^2]: It is basecally the difference between mean
[^3]:Cohen's $\kappa$ test between two independent samples does not indicates, or tell which sample is more "correct", but rather the  agreement level between both samples.  
[^7]: The min-max transformation is often used in ML techniques such as K-NN, SVM
[^8]: https://www.statisticshowto.com/what-is-the-yates-correction/
[^*]: Never Trust a Kappa equal to $1$ 

## Model Quality Assessment (Goodness-of-fit)

| Statistic                                | Formula                                                      | Meaning                                                      |
| ---------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Sum of the Squared Residues              | $SSR_{f(y)}=\sum_{i}(y_i-f(y_i))^2$                          | Measures how much deviation from the proposed model.         |
| Mean Squared Error                       | $MSE_{\hat{y}} = \frac{1}{N}SSR_{f(y)}$                      |                                                              |
| Coefficient of determination (R-squared) | $R^2 = 1-\frac{SSR_{f(y)}}{SSR_{\hat{y}}}$                   | Measures the proportion of the variation in the dependent variable that is predictable from the independent variable. $SSR_{\hat{y}} \equiv Var(y)$ |
| Entropy                                  | $S(p)=-\sum_i p_i\ln(p_i)$                                   | Measures how surprise the results are. If the process is a natural phenomenon in equilibrium, the best model maximize $\delta S(p)=0$. |
| Rényi Entropy                            |                                                              |                                                              |
| Hartley                                  |                                                              |                                                              |
| Mini-entropy                             |                                                              |                                                              |
| Perplexity                               |                                                              |                                                              |
| Approximate Entropy                      |                                                              |                                                              |
| Cross-Entropy                            | $CS(p|q)=-\sum_i p_i\ln(q_i)$                                | Measures how surprise the results are given an initial assumption. If the model. |
| Kulback-Lieber Divergence                | $D_{kl}(p|q)=-\sum_i p_i\ln(q_i)-S(p)$                       | Measures how surprise the results are given an initial assumption discounting the normal surprise due to variability. |
| Deviance                                 | $D(y,f(y_i,ỹ)) = 2(\ln(y_i)-\ln(f(ỹ)))$                      | Measures how far the results of a fitted pdf is from the pdf of the population. |
| Bayesian Information Criteria            | $BIC = (k+1)\ln(n)-2\ln(MLE(p_i))$                          or<br /> $BIC = n\ln(\frac{SSR}{n})+(k+1)\ln(n)$ | Measures the amount of information lost by fitting a model. $k$ is the number of parameters, and $n$ is sample size. the Lower $BIC$ is better. |
| Akaike Information Criteria              | $AIC = 2(k+1)-2\ln(MLE(p_i))$                          or<br />$AIC(p) = N\ln(\frac{SSR_{f(y_i)}}{N})+2(k+1)$ | Measures the amount of information lost by a fitting model. Simple models fail to predict  unseen data (Underfit). Complex models lose information about the phenomenon (Overfit). Lower $AIC$ is better. |
| Gini Coefficient                         | $G = \frac{1}{\mu}\int\int p(x)p(y)|x - y|dx dy$ <br />$G=\frac{1}{2n^2\mu}\sum_i\sum_j|x_i-y_j|$ | The Gini coefficient is an index for the degree of inequality in the distribution |
| Theil index                              |                                                              |                                                              |
| F-divergence                             | $D_f(p||q) = \sum_{\Omega} f(\frac{dp}{dq})dq$               | It measures the difference between two probability distributions $p$, $q$. |
| Total variation distance                 | $\delta(p,q) = sup|P(x_i)-Q(x_i)|$                           | Measures the total variation probability distance between two pdf. |
| Cramér–von Mises criterion               | $\omega^2 = \int_{-\infin}^\infin [F_n-F^*(x)]^2dF^*(x)$     | judging the goodness of fit of a cumulative distribution function |
| Hamming distance                         | $\Delta h(w_1,w_2)=\sum_{i=1}^{N}\delta_{w_{1i}w_{2i}}$      | Measure distance between words (or Tokens), by how many diff. chars. |
| Sørensen–Dice index                      | $s=\frac{2 n_t}{n_x + n_y}$                                  | Measure distance between words, or Tokens                    |
| Transposed letter Effect                 |                                                              |                                                              |



## Visualization

| **<u>Graphical</u>** | Dim  | Meaning                                                      |
| -------------------- | ---- | ------------------------------------------------------------ |
| Histogram            | 1    | Show the shape of a **continuous** distribution              |
| Barchart             | 1    | Show the shape of a **categorical** distribution             |
| Quantile-Quantile    | 2    | Show if two distribution are from the same family. Note: You can use this method to check whether a distribution is of a particular type. The default compared distribution (e.g. normal distribution) can be obtained by MLE. Also, Z-score both distributions to avoid scaling divergences. |
| Lagged Plot          | 2    | Show if a sample series exhibit periodicity                  |
| Scatter Plot         | 2    | Show the co-variance, or correlation, between independent and dependent, or independent, variable |
| Heatmap              | 3    | Show the correlation between two independent variables and the magnitude of a third dependent variable |
| Ternary Plot         | 3    | Show the correlation between three independent variables.    |
| Ternary Heatmap      | 4    | Show the correlation between three independent variables and the magnitude of a fourth dependent variable |



## Transformations

| Transformation                                               | Dim  | Goal                                                         |
| ------------------------------------------------------------ | ---- | ------------------------------------------------------------ |
| **<u>Normalization</u>**                                     | 1    | Transformed values lies within $$[0,1]$$ , $$\sum_{i=0}^{N} x_i = 1$$ |
| **<u>Standardization (Z-score Normalization)</u>**           | 1    | Transformed values follows a normal distribution with $$\mu =0$$ and $$\sigma=1$$ |
| **<u>Min-Max Scaling</u>**                                   | 1    | Transformed values lies within $$[0,1]$$ and preserving relative distance between points[^7] |
| **<u>Rank</u>**                                              | 1    | Transform numerical or ordinal value according to the data sorted order |
| <u>**Elo Rank**</u>                                          | 1    | Transform $\text{rate}_i =\frac{\sum_i^{N} \text{rate}_i+\sum_{j=1}^{N}c(\text{rate}_i-\text{rate}_j)}{N}$ |
| **<u>Box-Cox Transformation</u>**                            | 1    | Transformed values follow a normal distribution with $$\mu =0$$ and $$\sigma=1$$ (Labor Intensive) |
| **<u>Semi-Log Transformation</u>**                           | 2    | Rescale a variable, dependent or independent, reducing the skewness |
| **<u>Log-Log Transformation</u>**                            | 2    | Rescale both variables, dependent and independent, reducing the skewness |
| **<u>Squared Root</u>**                                      | 2    | Weak rescale a variable, dependent or independent, reducing the skewness |
| **<u>Log-git Transformation</u>**                            | 2    | Transformed values lies within $$[-\infty,\infty]$$, and $$\text{range} \in [0,1]$$ |
| **<u>Polar Transformation</u>**                              | 2    | Data exhibit harmonic periodicity.                           |
| **Spherical Transformation**                                 | 3    | Data exhibit spherical harmonic periodicity.                 |
| **<u>Singular Value Decomposition (SVD)</u>**                | 2+   | Linear combination of the data such that the new features are linear independent. |
| **<u>Principal Component Analysis (PCA)</u>**                | 2+   | Linear combination of the data such that the new features have ranked maximum variance. |
| **<u>Kernel PCA</u>**                                        |      | https://en.wikipedia.org/wiki/Kernel_principal_component_analysis |
| **<u>Principal Coordinates Analysis (PCoA)</u>**             | 2+   | https://www.youtube.com/watch?v=3dxr1SWti9g                  |
| **<u>Linear Discriminant Analysis (LDA)</u>** or **<u>Fisher discriominant Analysis</u>** | 2+   | LDA finds a linear combination of features that best separates two or more classes of objects or events by maximizing the ratio of between-class variance to within-class variance. |
| **<u>Kernel Fisher discriminant Analysis (KFD)</u>**         |      | https://en.wikipedia.org/wiki/Kernel_Fisher_discriminant_analysis |
| **<u>t-SNE</u>**                                             |      | https://en.wikipedia.org/wiki/T-distributed_stochastic_neighbor_embedding |
| **<u>LLE</u>**                                               |      | https://en.wikipedia.org/wiki/Nonlinear_dimensionality_reduction |
| **<u>Isomap</u>**                                            |      | https://en.wikipedia.org/wiki/Isomap                         |
| Spectral Embedding                                           |      | https://en.wikipedia.org/wiki/Spectral_clustering            |
| Umap                                                         |      | https://en.wikipedia.org/wiki/Nonlinear_dimensionality_reduction#Uniform_manifold_approximation_and_projection |
| **<u>Fisher Discriminant Analysis (FDA)</u>**                | 2+   | Factor analysis describes variability among observed, correlated variables in terms of a potentially lower number of unobserved variables called factors |
| **<u>Fisher Information</u>**                                | 2+   | FI measures the amount of information that an observable random variable X carries about an unknown parameter θ of a distribution that models X |
| **<u>Stree plot</u>**                                        | 2+   | Displays the factors/eigenvalues in a sorted curve, showing which factors/eigenvalues explain the most the variability. |
| <u>**Multidimensional Scaling**</u>                          | 2+   | Displays the level of similarity of individual cases of a data set. |
| <u>**Hyper-spherical Transformation**</u>                    | 3+   | Data lies on the surface of hyper sphere                     |

## Outliers

### Outlier Detection

Z-score

Tukey's range test

Box plot Whiskers

Grubbs's test

Mahalanobis distance

Peirce's criterion

Bayesian Average

### Outlier Mending

Context

Neighbor voting mode

Neighbor Mean

Neighbor Median

Winsorization

Bayesian 

### Procedure:

1. Identify the outlier as an outlier.
2. Is the outlier an input mistake?
3. Can it be fixed?
   1. Yes?! Fixed it!
   2. No?! Remove it!

## Data Health

-   The residue follows a normal distribution
-   Independent variables should not present auto-correlation



### Cohen $\kappa$ reference table [^1]

| $\Kappa$   | Level of Agreement |
| ---------- | ------------------ |
| $\geq 1$   | Perfect[^*]        |
| $\geq 0.8$ | Almost perfect     |
| $\geq 0.6$ | Substantial        |
| $\geq 0.4$ | Moderate           |
| $\geq 0.2$ | Fair               |
| $> 0.0$    | Slight             |
| $\leq 0.0$ | No Agreement       |

[^1]:$\text{Landis \& Koch (1977)}$

## Confusion Matrix

| **Total pop. **        | **Pred. pos. ($PP$)**                       | **Pred. neg. ($PN$)**                                        | **Informativeness, bookmaker**                     | **Prevalence threshold**                        |
| ---------------------- | ------------------------------------------- | ------------------------------------------------------------ | -------------------------------------------------- | ----------------------------------------------- |
| **Positive ($P$)**[^a] | True pos. ($TP$), hit[^b]                   | False neg. ($FN$)  Type II Error, underestimation            | True pos. rate (TPR), recall, sensitivity (SEN)    | False neg. rate (FNR)[^c], miss rate            |
| **Negative** ($N$)[^d] | False pos.($FP$), Type I Error, false alarm | `<p color=green>True neg. ($TN$), correct rejection`</p>[^e] | False pos. rate ($FPR$), prob. of false alarm[^f], | True neg. rate (TNR), specificity               |
| **Prevalence**         | Pos. predictive value (PPV)                 | False omission rate                                          | Pos. likelihood ratio                              | Neg. likelihood ratio                           |
| **Accuracy**           | False discovery rate                        | Negative predictive value                                    | Markedness (MK),                                   | Diagnostic odds ratio                           |
| **Balanced accuracy**  | F1                                          | Fowlkes–Mallows index                                        | Matthews correlation coef.                         | Threat score (TS), critical success index (CSI) |

---

###  Total population
The entire group of individuals, items, or data points that you want to study.
$$
n = P + N
$$

Where $P$ is the total number of positive cases and $N$ the total number of negative cases. This forms the basis for classification performance evaluation by defining the total dataset size.

***

###  True positive rate (TPR) / Recall / Sensitivity / Power
Measures the proportion of actual positives correctly identified. It reflects the ability to detect positive cases. High sensitivity means fewer misses.
$$
\text{Power} = 1-\beta = \frac{TP}{P}
$$

Typical application: Important in medical tests where missing a positive case (false negative) can have serious consequences.

***

###  True negative rate (TNR) / Selectivity / Specificity
Measures the proportion of actual negatives correctly identified. It indicates ability to correctly exclude negative cases.
$$
\text{Specificity} = \frac{TN}{N}
$$

Typical application: Crucial when false positives are costly, e.g., in diagnostic screening to avoid unnecessary treatments.

***

###  False negative rate (FNR) / Miss rate / Type II Error
Proportion of positives incorrectly classified as negatives. Represents the rate of missed positive cases.
$$
\beta= \frac{FN}{P}
$$

Application: Used to evaluate risk in applications where failing to detect positives is critical.

***

###  False positive rate (FPR) / Fall-out / Type I Error
Proportion of negatives incorrectly classified as positives. Reflects the rate of false alarms.
$$
\alpha = \frac{FP}{N}
$$

Application: Important when false alarms lead to costly follow-ups or psychological impacts.

***

###  Informedness / Bookmaker informedness (BM)
Measures the probability of an informed decision versus random guessing, combining sensitivity and specificity.
$$
BM = TPR + TNR − 1
$$

Interpretation: Values range $[-1,1]$; 0 means no better than chance; 1 is perfect prediction.

***

###  Prevalence threshold (PT)
The probability threshold at which the expected benefit of classifying positives equals classifying negatives.
$$
PT = \frac{\sqrt{(TPR × FPR)} - FPR }{TPR - FPR}
$$

Used to select optimal decision threshold in classification.

***

###  Prevalence
The proportion of positives within the total population.
$$
PRV = \frac{P}{P+N}
$$

Indicates class imbalance, which influences interpretation of metrics.

***

###  Positive predictive value (PPV) / Precision
Proportion of predicted positives that are actual positives. Measures accuracy of positive predictions.
$$
\text{precision} = \frac{TP}{TP+FP}
$$

Important when the cost of false positives matters, e.g., in information retrieval.

***

###  False omission rate (FOR)
Proportion of predicted negatives that are actually positives.
$$
FOR = \frac{FN}{TN+FN}
$$

Used to assess the risk associated with negative predictions.

***

###  Positive likelihood ratio (LR+)
Ratio of true positive rate to false positive rate; how much the odds of being positive increase when test is positive.
$$
LR+ = \frac{TPR}{FPR}
$$

Used in diagnostic testing to weigh evidence.

***

###  Negative likelihood ratio (LR-)
Ratio of false negative rate to true negative rate; how much the odds of being positive decrease when test is negative.
$$
LR− = \frac{FNR}{TNR}
$$

Also used in diagnostics to assess test effectiveness.

***

###  Accuracy (ACC)
Proportion of total correct predictions (both positive and negative).
$$
\text{ACC} = \frac{TP + TN}{P + N}
$$

Widely used but can be misleading with imbalanced datasets.

***

###  False discovery rate (FDR)
Proportion of predicted positives that are false positives.
$$
FDR = \frac{FP}{TP + FP}
$$

Important in multiple hypothesis testing and controlling false positives.

***

###  Negative predictive value (NPV)
Proportion of predicted negatives that are actual negatives.
$$
NPV = \frac{TN}{TN+FN}
$$

Measures reliability of negative predictions.

***

###  Markedness (MK) / $\Delta P$
Reflects the strength of association between predictions and outcomes by combining PPV and NPV.
$$
\Delta p = PPV + NPV − 1
$$

Ranges from $-1$ (worst) to $1$ (best); $0$ means no predictive power.

***

###  Diagnostic odds ratio (DOR)
Ratio of positive to negative likelihood ratios; overall test effectiveness.
$$
DOR = \frac{LR+}{ LR−}
$$

Higher values indicate better discriminatory test performance.

***

###  Balanced accuracy (BA)
Average of sensitivity and specificity, compensating for imbalanced classes.
$$
BA = \frac{TPR + TNR}{2}
$$

Preferred metric when classes are imbalanced.

***

###  F1 score
Harmonic mean of precision and recall. Balances false positives and false negatives.
$$
\text{F1 score} = \frac{2 TP}{2 TP + FP + FN}
$$

Common in information retrieval and classification to balance precision and recall.

***

### Fowlkes–Mallows index (FM)
Geometric mean of precision and recall.
$$
FM = \sqrt{PPV \times TPR}
$$

Used in clustering and classification to assess balance between precision and recall.

***

### Matthews correlation coefficient (MCC)
Correlation coefficient between observed and predicted binary classifications.
$$
\text{MCC} = \frac{ TP \times TN - FP \times FN } {\sqrt{(TP+FP)(TP+FN)(TN+FP)(TN+FN)}}
$$

Ranges from -1 (total disagreement) to +1 (perfect prediction), robust for imbalanced data.

***

### Threat score (TS) / Critical success index (CSI) / Jaccard index
Measures overlap between predicted and actual positives, ignoring true negatives.
$$
\text{Jaccard index} = \frac{TP}{TP + FN + FP}
$$

Common in meteorology and image segmentation to evaluate event detection accuracy.

**Notes:**

[^a]: the number of real positive cases in the data
[^b]:A test result that correctly indicates the presence of a condition or characteristic
[^c]: Type II error: A test result which wrongly indicates that a particular condition or attribute is absent
[^d]: the number of real negative cases in the data
[^e]: A test result that correctly indicates the absence of a condition or characteristic
[^f]: Type I error: A test result which wrongly indicates that a particular condition or attribute is present



