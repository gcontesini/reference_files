# Factor Analysis

Factor analysis is a statistical method used to explain variability among observed variables by discovering a smaller number of unobserved latent variables called factors. These factors represent underlying patterns that explain why the observed variables correlate. The goal is to reduce the complexity of data by grouping variables associated with the same factor.

***

### Theory of Factor Analysis

1. **Observed Variables:** These are measurable variables, for example, responses to survey questions.
2. **Latent Factors:** These are unobserved variables that influence the observed variables. The observed variables correlate because they share one or more latent factors.
3. **Factor Loadings:** Each observed variable is related to the latent factors by factor loadings, which represent the strength of the relationship between a variable and a factor.
4. **Model Equation:** Each observed variable \$ x_i \$ is modeled as a linear combination of factors plus unique error:

$$
x_i - \mu_i = l_{i1}f_1 + l_{i2}f_2 + \cdots + l_{ik}f_k + \epsilon_i
$$

where $$I_{ij}$$ are factor loadings, $f_j$ are factors, and $\epsilon_i$ is error term.
5. **Goal:** Find factors and loadings that best explain the correlations among observed variables.

***

### Simple Numerical Example

Suppose a psychologist measures three test scores related to intelligence for multiple subjects. They believe two latent factors underlie these scores: verbal intelligence and mathematical intelligence.


| Observed Variable | Test 1 | Test 2 | Test 3 |
| :-- | :-- | :-- | :-- |
| Observed Scores | 85 | 78 | 92 |

- Test 1 and Test 3 are more related to verbal intelligence.
- Test 2 is more related to mathematical intelligence.

***

### Steps:

1. **Assume two factors (verbal and mathematical intelligence).**
2. **Factor loadings matrix (hypothetical):**

$$
L =
\begin{bmatrix}
0.9 & 0.1 \\
0.2 & 0.8 \\
0.85 & 0.15
\end{bmatrix}
$$

This means Test 1 loads 0.9 on verbal, 0.1 on math; Test 2 loads 0.2 verbal, 0.8 math; Test 3 loads 0.85 verbal, 0.15 math.
3. **Model the observed scores as:**

$$
\begin{bmatrix}
85 - \mu_1 \\
78 - \mu_2 \\
92 - \mu_3
\end{bmatrix}
=
\begin{bmatrix}
0.9 & 0.1 \\
0.2 & 0.8 \\
0.85 & 0.15
\end{bmatrix}
\times
\begin{bmatrix}
f_1 \\
f_2
\end{bmatrix}
+
\begin{bmatrix}
\epsilon_1 \\
\epsilon_2 \\
\epsilon_3
\end{bmatrix}
$$
4. **Estimate factor scores \$ f_1, f_2 \$ (verbal and mathematical intelligence) for the subject by solving or using regression techniques.**
5. **Interpretation:**
    - Scores are explained as contributions from verbal and mathematical intelligences.
    - Tests highly loaded on verbal intelligence reflect that latent trait strongly.

***

This is the core theory and essence of factor analysis: modeling observed variables as combinations of fewer latent factors representing underlying concepts.

If desired, a numerical calculation example for factor scores or factor loadings matrix estimation can be demonstrated further.[^1][^4][^5]
<span style="display:none">[^10][^2][^3][^6][^7][^8][^9]</span>

<div style="text-align: center">⁂</div>

[^1]: http://mchp-appserv.cpe.umanitoba.ca/viewConcept.php?printer=Y\&conceptID=1485

[^2]: https://www.qualtrics.com/experience-management/research/factor-analysis/

[^3]: https://www.spotfire.com/glossary/what-is-factor-analysis

[^4]: https://en.wikipedia.org/wiki/Factor_analysis

[^5]: https://www.theanalysisfactor.com/factor-analysis-1-introduction/

[^6]: https://www.statisticssolutions.com/free-resources/directory-of-statistical-analyses/factor-analysis/

[^7]: https://pmc.ncbi.nlm.nih.gov/articles/PMC7883798/

[^8]: https://stats.oarc.ucla.edu/spss/seminars/introduction-to-factor-analysis/a-practical-introduction-to-factor-analysis/

[^9]: http://www.yorku.ca/ptryfos/f1400.pdf

[^10]: https://www.youtube.com/watch?v=6d-LzSqb07o

