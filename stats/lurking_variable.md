# Lurking Variable: Definition & Examples

By [Jim Frost](https://statisticsbyjim.com/author/statis11_wp/) [Leave a Comment](https://statisticsbyjim.com/basics/lurking-variable/#respond)

## What is a Lurking Variable?

A lurking variable is a variable that researchers do not include in a statistical analysis, but it can still affect the outcome. These variables can create problems by biasing your statistical results in any of the following ways:

- Magnify the real [effect](https://statisticsbyjim.com/glossary/effect/).
- Weaken the appearance of the relationship.
- Change the sign of a [correlation](https://statisticsbyjim.com/glossary/correlation/).
- Mask an effect that actually exists.
- Create phantom correlations where none exist!

Learn more about [Spurious Correlations](https://statisticsbyjim.com/basics/spurious-correlation/).

![Image of someone hiding to represent a lurking variable.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2023/04/lurking_variable.jpg?resize=300%2C200&ssl=1)Looks like this lurking variable is out to cause problems!

Lurking variables earned their name because they often go undetected and hide beneath the surface of the variables researchers are interested in studying. Therefore, it’s essential to be aware of the potential for lurking variables and take steps to control them in statistical analyses.

[Statisticians](https://statisticsbyjim.com/glossary/statistics/) refer to this distortion of the actual relationships as omitted variable bias. When you are aware of lurking variables, you can include them in the model to control for them. Unfortunately, these problematic variables can be unknown, and researchers might not account for them. You’ll see examples of this bias in the next section.

A lurking variable can cause omitted variable bias only when it correlates with both the dependent variable and an independent variable *and* you don’t include it in the model. Learn about [independent and dependent variables](https://statisticsbyjim.com/regression/independent-dependent-variables/).

The term “lurking variable” is essentially a synonym for a confounding variable. As variables, they have the same properties. However, some analysts make the following distinction between them.

- A lurking variable is unknown to the researchers; hence, they do not include it in the analysis.
- A confounding variable is known to the researchers and they include it in the model.

## Lurking Variable Examples

Here are three examples of how lurking variables can bias the results. The first two examples show these variables making the correlation between a pair of variables appear stronger than it actually is. The third example is for a study I analyzed where it hid the genuine effect between two variables.

Learn more about [Interpreting Correlation Coefficients](https://statisticsbyjim.com/basics/correlations/).

### Coffee and Heart Disease

Researchers conducted a study to determine whether there is a relationship between drinking coffee and heart disease. The study finds a positive relationship. However, it turns out that the participants who drank the most coffee were also more likely to smoke, which is a known risk [factor](https://statisticsbyjim.com/glossary/factors/) for heart disease. Smoking is a lurking variable that has positively biased the correlation between coffee and heart disease.

### Education and Income

Analysts want to evaluate if there is a relationship between education level and income. The study finds a positive relationship, but it turns out that the participants with higher education levels also had more work experience, a known factor that increases income. Work experience is a lurking variable that has positively biased the correlation between education and income.

### Activity Level and Bone Density

In a study I helped run, we initially found no relationship between activity level and bone density, even though we expected a positive correlation for theoretical reasons. However, the more active individuals tended to weigh less. Lower-weight individuals tend to have lower bone density. Hence, weight is a lurking variable that negatively biased the correlation between activity level and bone density. In this case, it hid a real effect.

After including weight in the [regression](https://statisticsbyjim.com/glossary/regression-analysis/) model, the results showed the genuine positive relationship between activity level and bone density.

For a much more thorough look at how lurking variables cause [omitted variable bias](https://statisticsbyjim.com/regression/omitted-variable-bias/) and how to reduce this problem, read my post [Confounding Variables Can Bias Your Results](https://statisticsbyjim.com/regression/confounding-variables-bias/).

In conclusion, lurking variables can cause problems in statistical analyses by introducing bias into the results. To avoid these problems, it’s crucial to consider all potential confounders carefully when designing a study and to control for them as much as possible. By doing so, you can ensure that your statistical analyses provide accurate and reliable results.