# Proxy Variables: The Good Twin of Confounding Variables

By [Jim Frost](https://statisticsbyjim.com/author/statis11_wp/) [10 Comments](https://statisticsbyjim.com/regression/proxy-variables/#comments)

Proxy variables are easily measurable variables that analysts include in a model in place of a variable that cannot be measured or is difficult to measure. Proxy variables can be something that is not of any great interest itself, but has a close [correlation](https://statisticsbyjim.com/glossary/correlation/) with the variable of interest.

![Photograph of a spider web to represent a web of correlations for proxy variables and confounders.](https://i0.wp.com/statisticsbyjim.com/wp-content/uploads/2021/03/spider_web.jpg?resize=376%2C250&ssl=1)A web of correlations can help or hurt you. Be the spider, not the fly.

Imagine you have an important variable to include in your model but you can’t measure it. If you leave it out, it’s a confounding variable that can flip your statistical analysis results on its head thanks to omitted variable bias. Random assignment in experiments can protect you from confounders in some cases.

However, what do you do when you can’t randomize and you can’t measure the important variable to include it in your model? Are you stuck with omitted variable bias?

Fortunately, proxy variables are a potential solution.

Confounding variables and proxy variables are related concepts: correlated predictor variables. But there’s a huge difference between them:

- Confounding variables affect your results in undesirable ways by not being included in the model. They are primarily a danger when you aren’t aware of them during the analysis. [Statisticians](https://statisticsbyjim.com/glossary/statistics/) also refer to them as [lurking variables](https://statisticsbyjim.com/basics/lurking-variable/).
- Proxy variables benefit your analysis. You know about and intentionally include them in the model to improve your results.

Wise data analysts can find ways to avoid getting burned by confounding variables and instead use proxy variables to their advantage. Here’s a case where knowledge truly is power: specifically, knowledge of your subject matter and the correlation structure amongst your variables allows you to use these correlations to your advantage.

## Prediction

Imagine you are mostly interested in predicting something and that you don’t care so much about identifying true cause-and-effect relationships. Fortunately, prediction doesn’t always require a causal relationship between predictor and response. Instead, a proxy variable that is simply correlated to the response, and is easier to obtain than a causally connected variable, might well do the job.

For example, an analyst I know uses [regression analysis](https://statisticsbyjim.com/glossary/regression-analysis/) for fantasy football. Recently, he used a model that included one predictor variable — each player’s fantasy football points from the prior season — to predict his points for the subsequent season. Clearly, the points from one season are not causing the points for the next season. Rather, the points are a proxy variable for a host of other variables such as each player’s skills and capabilities, those of their team, the teams they play against, etc. It’s impossible to measure all of these, so a proxy variable is essential. His model for choosing quarterbacks has an [R-squared](https://statisticsbyjim.com/glossary/r-squared/) of 73.68%. In this case, there is enough of a correlation from one year to the next that he can use the model for prediction, even though we don’t know or measure the exact causal variables.

**Related post**: [Using Regression to make Predictions](https://statisticsbyjim.com/regression/predictions-regression/)

## Produce unbiased results

Now, imagine you are working on a research project where some of the variables are difficult, if not impossible, to measure. Remember, if you don’t include the intended variable in any form, omitted variable bias can produce inaccurate results. Including an imperfect proxy of a hard-to-measure variable is often better than not including an important variable at all. So, if you can’t include the intended variable, look for a proxy!

**Related posts**: [Confounding Variables](https://statisticsbyjim.com/regression/confounding-variables-bias/) and [Omitted Variable Bias](https://statisticsbyjim.com/regression/omitted-variable-bias/)

### Examples of proxy variables

| **Intended variable**                                       | **Proxy variable**                      |
| ----------------------------------------------------------- | --------------------------------------- |
| Historical environmental conditions                         | Widths of tree rings                    |
| Quality of life                                             | Per-capita GDP                          |
| True body fat percentage                                    | Body Mass Index (BMI)                   |
| Cognitive ability                                           | Years of education and/or GPA           |
| Depth that light penetrates into the ocean over large areas | Satellite images of ocean surface color |
| Hormone levels in blood                                     | Changes in height over a fixed time     |

Do you have examples of proxy variables that have helped you out in your analyses?