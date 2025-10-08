# Bayesian Statistics

[toc]

## Module 1: Bayesian Foundations

- Probability as Subjective Belief vs. Frequency
- Historical context and philosophical perspectives
- Axiomatic probability, derivation of Bayes’ theorem
- Priors, likelihoods, posteriors

## Module 2: Priors—Specification, Interpretation, and Impact

- Informative, non-informative, conjugate, and reference priors
- Prior elicitation
- Sensitivity analysis and prior checking

## Module 3: Likelihood Construction and Data Models

- Likelihood construction and mapping
- Sufficient statistics and properties
- Marginalization and conditioning

## Module 4: Posterior Analysis

- Analytic posteriors in conjugate models
- Posterior summaries and prediction
- Bayesian updating
- Bayesian credib

## Module 5: Computational Methods

- Numerical computation: Introduction to MCMC, Gibbs, Metropolis-Hastings
- Diagnosing convergence and mixing
- Advanced computational approaches: Hamiltonian Monte Carlo, Variational Inference

## Module 6: Model Checking, Validation, and Comparison

- Posterior predictive checks
- Model comparison: Bayes factors, BIC, DIC, WAIC

## Module 7: Hierarchical and Multilevel Models

- Hierarchical notation/structures
- Shrinkage and exchangeability
- Applications in multilevel ANOVA and random effects

## Module 8: Applications and Modern Topics

- Bayesian regression models (linear, GLM, logistic, Poisson, etc.)
- Bayesian networks, graphical models, and causality
- Bayesian machine learning and nonparametric methods

## Module 9: Practical Implementation

- Bayesian workflows in R, Python (PyMC, Stan, BUGS/JAGS)
- Reporting and reproducibility
- Best practices for applied Bayesian analysis

## Module 10: Kriging (Gaussian Process Regression)

- Introduction to spatial statistics and the origin of Kriging
- Mathematical formulation of Kriging as Gaussian process regression
- Inference, prediction, and uncertainty quantification in spatial models
- Hands-on: Implementing Kriging in statistical software

## Module 11: Acquisition Functions

- Motivation and role in sequential decision-making
- Common acquisition functions: Probability of Improvement, Expected Improvement, Upper Confidence Bound, Thompson Sampling
- Balancing exploration versus exploitation

## Module 12: Bayesian Optimization

- Motivation: Black-box, expensive, and derivative-free optimization
- Integration of Gaussian processes (Kriging) as surrogate models
- Sequential decision framework using acquisition functions
- Applications in hyperparameter tuning, engineering, and science
- Practical implementation: Bayesian optimization libraries and best practices



## Example Syllabus Table (Weeks 10-12 Expanded)

| Week | Topic                               | Key Activities                                              | Reading                                    |
| :--- | :---------------------------------- | :---------------------------------------------------------- | :----------------------------------------- |
| 1    | Bayesian Foundations                | Proof of Bayes' theorem, history                            | Jaynes Ch. 1 & 2                           |
| 2    | Priors and Prior Sensitivity        | Prior predictive simulation, prior elicitation              | Bernardo & Smith Ch. 4                     |
| 3-4  | Conjugate/Non-Conjugate Analysis    | Analytic/posterior derivation, sensitivity                  | Gelman Ch. 2, 3                            |
| 5-7  | MCMC and Computational Methods      | Programming assignment: Gibbs sampler                       | Robert & Casella Ch. 6                     |
| 8    | Hierarchical Models                 | Model construction, simulation                              | Gelman Ch. 5                               |
| 9    | Model Checking & Comparison         | Posterior predictive checks                                 | Gelman Ch. 6, Spiegelhalter                |
| 10   | Kriging/Gaussian Process Regression | Spatial modeling, uncertainty quantification, software labs | Rasmussen & Williams Ch. 2-3               |
| 11   | Acquisition Functions               | Exploration vs. exploitation workshop, implement EI/UCB     | Snoek et al., 2012; Brochu et al., 2010    |
| 12   | Bayesian Optimization               | Sequential optimization project, practical applications     | Shahriari et al., 2016; Jones et al., 1998 |

## Assessment Structure

- Problem sets: Mathematical derivations, applied modeling, simulations
- Programming projects: MCMC, Kriging, Bayesian optimization
- In-class quizzes: Principles and proofs
- Final project: Complete Bayesian analysis or optimization study

## Documentation and Reporting

- Fully typeset materials in Markdown
- Clear documentation of assumptions, justifications, computational workflow
- Code, results, and reproducible reporting required for all submissions