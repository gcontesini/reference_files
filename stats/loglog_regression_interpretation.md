# Interpretation of log transformed predictor and/or response

[[_TOC_]]


I'm wondering if it makes a difference in interpretation whether only the dependent, both the dependent and independent, or only the independent variables are log transformed.

Consider the case of

$\log(DV) = \text{Intercept} + B1*IV + \text{Error} $

I can interpret the IV as the percent increase but how does this change when I have

```
log(DV) = Intercept + B1*log(IV) + Error
```

or when I have

```
DV = Intercept + B1*log(IV) + Error
```

# Long Answer

Charlie provides a nice, correct explanation. The Statistical Computing site at UCLA has some further examples: https://stats.oarc.ucla.edu/sas/faq/how-can-i-interpret-log-transformed-variables-in-terms-of-percent-change-in-linear-regression, and https://stats.oarc.ucla.edu/other/mult-pkg/faq/general/faqhow-do-i-interpret-a-regression-model-when-some-variables-are-log-transformed

Just to complement Charlie's answer, below are specific interpretations of your examples. As always, coefficient interpretations assume that you can defend your model, that the regression diagnostics are satisfactory, and that the data are from a valid study.

**Example A**: No transformations

```
DV = Intercept + B1 * IV + Error 
```

"One unit increase in IV is associated with a (`B1`) unit increase in DV."

```python3
import numpy as np
A = 10 
for _ in np.arange(A):
	print(_)
```



**Example B**: Outcome transformed

```
log(DV) = Intercept + B1 * IV + Error 
```

"One unit increase in IV is associated with a (`B1 * 100`) percent increase in DV."

**Example C**: Exposure transformed

```
DV = Intercept + B1 * log(IV) + Error 
```

"One percent increase in IV is associated with a (`B1 / 100`) unit increase in DV."

**Example D**: Outcome transformed and exposure transformed

```
log(DV) = Intercept + B1 * log(IV) + Error 
```

"One percent increase in IV is associated with a (`B1`) percent increase in DV."

# Short Answer

The intercept term does not refer to when x=0, since your x is actually ln(x). Instead, the intercept refers to when $\ln(x)=0$, which occurs when the old x=1. At that point (in the new space), *y*^y^ (i.e., *y*√ˆy^) differs significantly from 0.

​						$\frac{\part}{\part t} f(x,t) = x\cdot \sin(a\cdot t)$

