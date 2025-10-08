# Confounding Variable: Definition & Examples

By [Jim Frost](https://statisticsbyjim.com/author/statis11_wp/) [86 Comments](https://statisticsbyjim.com/regression/confounding-variables-bias/#comments)

## Confounding Variable Definition

In studies examining possible causal links, a confounding variable is an unaccounted [factor](https://statisticsbyjim.com/glossary/factors/) that impacts both the potential cause and [effect](https://statisticsbyjim.com/glossary/effect/) and can distort the results. Recognizing and addressing these variables in your experimental design is crucial for producing valid findings. [Statisticians](https://statisticsbyjim.com/glossary/statistics/) also refer to confounding variables that cause bias as confounders, omitted variables, and [lurking variables](https://statisticsbyjim.com/basics/lurking-variable/).

![diagram that displays how confounding works.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2018/09/confounding-300x220.png?resize=300%2C220)

A confounding variable systematically influences both an independent and dependent variable in a manner that changes the apparent relationship between them. Failing to account for a confounding variable can bias your results, leading to erroneous interpretations. This bias can produce the following problems:

- Overestimate the strength of an effect.
- Underestimate the strength of an effect.
- Change the direction of an effect.
- Mask an effect that actually exists.
- Create [Spurious Correlations](https://statisticsbyjim.com/basics/spurious-correlation/).

Additionally confounding variables reduce an experiment’s [internal validity](https://statisticsbyjim.com/basics/internal-and-external-validity/), thereby reducing its [ability to make causal inferences](https://statisticsbyjim.com/basics/causation/) about treatment effects. You don’t want any of these problems!

In this post, you’ll learn about confounding variables, the problems they cause, and how to minimize their effects. I’ll provide plenty of examples along the way!

## What is a Confounding Variable?

Confounding variables bias the results when researchers don’t account for them. How can variables you don’t measure affect the results for variables that you record? At first glance, this problem might not make sense.

Confounding variables influence both the independent and dependent variable, distorting the observed relationship between them. To be a confounding variable, the following two conditions must exist:

- It must correlate with the dependent variable.
- It must correlate with at least one independent variable in the experiment.

The diagram below illustrates these two conditions. There must be non-zero correlations (r) on all three sides of the triangle. X1 is the independent variable of interest while Y is the dependent variable. X2 is the confounding variable.

![Diagram that displays the conditions for confounding variables to produce bias.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2018/09/conditions_confounding_bias.png?resize=207%2C139)

The [correlation](https://statisticsbyjim.com/glossary/correlation/) structure can cause confounding variables to bias the results that appear in your statistical output. In short, The amount of bias depends on the strength of these correlations. Strong correlations produce greater bias. If the relationships are weak, the bias might not be severe. If any of the correlations are zero, the extraneous variable won’t produce bias even if the researchers don’t control for it.

Leaving a confounding variable out of a regression model can produce [omitted variable bias](https://statisticsbyjim.com/regression/omitted-variable-bias/).

## Confounding Variable Examples

### Exercise and Weight Loss

In a study examining the relationship between regular exercise and weight loss, diet is a confounding variable. People who exercise are likely to have other healthy habits that affect weight loss, such as diet. Without controlling for dietary habits, it’s unclear whether weight loss is due to exercise, changes in diet, or both.

### Education and Income Level

When researching the correlation between the level of education and income, geographic location can be a confounding variable. Different regions may have varying economic opportunities, influencing income levels irrespective of education. Without controlling for location, you can’t be sure if education or location is driving income.

### ![X-ray image of legs to illustrate the role of a confounding variable in an analysis.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2018/09/leg_xray-296x300.png?resize=296%2C300)Exercise and Bone Density

I used to work in a biomechanics lab. For a bone density study, we measured various characteristics including the subjects’ activity levels, their weights, and bone densities among many others. Bone growth theories suggest that a positive correlation between activity level and bone density likely exists. Higher activity should produce greater bone density.

Early in the study, I wanted to validate our initial data quickly by using simple [regression analysis](https://statisticsbyjim.com/glossary/regression-analysis/) to assess the relationship between activity and bone density. There should be a positive relationship. To my great surprise, there was no relationship at all!

Long story short, a confounding variable was hiding a significant positive correlation between activity and bone density. The offending variable was the subjects’ weights because it correlates with both the independent (activity) and dependent variable (bone density), thus allowing it to bias the results.

After including weight in the regression model, the results indicated that both activity and weight are statistically significant and positively correlate with bone density. Accounting for the confounding variable revealed the true relationship!

The diagram below shows the signs of the correlations between the variables. In the next section, I’ll explain how the confounder (Weight) hid the true relationship.

![Diagram of the bone density model.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2018/09/bone_density_model_diagram.png?resize=255%2C141)

**Related post**: [Identifying Independent and Dependent Variables](https://statisticsbyjim.com/regression/independent-dependent-variables/)

## How the Confounder Hid the Relationship

The diagram for the Activity and Bone Density study indicates the conditions exist for the confounding variable (Weight) to bias the results because all three sides of the triangle have non-zero correlations. Let’s find out how leaving the confounding variable of weight out of the model masked the relationship between activity and bone density.

The correlation structure produces two opposing effects of activity. More active subjects get a bone density boost directly. However, they also tend to weigh less, which reduces bone density.

When I fit a regression model with only activity, the model had to attribute both opposing effects to activity alone. Hence, the zero correlation. However, when I fit the model with both activity and weight, it could assign the opposing effects to each variable separately.

Now imagine if we didn’t have the weight data. We wouldn’t have discovered the positive correlation between activity and bone density. Hence, the example shows the importance of controlling confounding variables. Which leads to the next section!

## Reducing the Effect of Confounding Variables

As you saw above, accounting for the influence of confounding variables is essential to ensure your findings’ [validity](https://statisticsbyjim.com/glossary/validity/). Here are four methods to reduce their effects.

### Restriction

Restriction involves limiting the study [population](https://statisticsbyjim.com/glossary/population/) to a specific group or criteria to eliminate confounding variables.

For example, in a study on the effects of caffeine on heart rate, researchers might restrict participants to non-smokers. This restriction eliminates smoking as a confounder that can influence heart rate.

### Matching

This process involves pairing subjects by matching characteristics pertinent to the study. Then, researchers randomly assign one individual from each pair to the control group and the other to the experimental group. This randomness helps eliminate bias, ensuring a balanced and fair comparison between groups. This process controls confounding variables by equalizing them between groups. The goal is to create groups as similar as possible except for the experimental treatment.

For example, in a study examining the impact of a new education method on student performance, researchers match students on age, socioeconomic status, and baseline academic performance to control these potential confounders.

Learn more about [Matched Pairs Design: Use & Examples](https://statisticsbyjim.com/basics/matched-pairs-design/).

### Random Assignment

Randomly assigning subjects to the control and treatment groups helps ensure that the groups are statistically similar, minimizing the influence of confounding variables.

For example, in clinical trials for a new medication, participants are randomly assigned to either the treatment or control group. This random assignment helps evenly distribute variables such as age, gender, and health status across both groups.

Learn more about [Random Assignment in Experiments](https://statisticsbyjim.com/basics/random-assignment-experiments/).

### Statistical Control

Statistical control involves using analytical techniques to adjust for the effect of confounding variables in the analysis phase. Researchers can use methods like regression analysis to control potential confounders.

For example, I showed you how I controlled for weight as a confounding variable in the bone density study. Including weight in the regression model revealed the genuine relationship between activity and bone density.

Learn more about [controlling confounders by using regression analysis](https://statisticsbyjim.com/regression/when-use-regression-analysis/).

By incorporating these strategies into research design and analysis, researchers can significantly reduce the impact of confounding variables, leading to more accurate results.

If you aren’t careful, the hidden hazards of a confounding variable can completely flip the results of your experiment!

## Reference

Kamangar F. [Confounding variables in epidemiologic studies: basics and beyond](https://www.researchgate.net/publication/230570124_Confounding_Variables_in_Epidemiologic_Studies_Basics_and_Beyond). Arch Iran Med. 2012 Aug;15(8):508-16. PMID: 22827790.