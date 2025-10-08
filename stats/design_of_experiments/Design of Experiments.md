# Design of Experiments

[TOC]

## Introduction




## Comparative/Planing

## Screening/Characterizing

### Screening Designs

#### Fractional factorial designs

"*A factorial experiment in which only an adequately chosen fraction of the treatment combinations required for the complete factorial experiment is selected to be run.*"

Even if the number of factors, $$k$$, in a design is small, the $$2^k$$ runs specified for a full factorial can quickly become very large. For example, $$2^6 = 64$$ runs is for a two-level, full factorial design with six factors. To this design we need to add a good number of centerpoint runs and we can thus quickly run up a very large resource requirement for runs with only a modest number of factors.

The solution to this problem is to use only a fraction of the runs specified by the full factorial design. Which runs to make and which to leave out is the subject of interest here. In general, we pick a fraction such as ½, ¼, etc. of the runs called for by the full factorial. We use various strategies that ensure an appropriate choice of runs. The following sections will show you how to choose an appropriate fraction of a full factorial design to suit your purpose at hand. *Properly chosen fractional factorial designs for 2-level experiments have the desirable properties of being both [balanced](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Balanced) and [orthogonal](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Orthogonality).*



#### Plackett-Burman designs

The Plackett-Burman (PB) are very economical designs with the run number a multiple of four (rather than a power of 2). Plackett-Burman designs are very efficient screening designs when only main effects are of interest.  These designs are used for screening experiments because, in a PB design, main effects are, in general, heavily confounded with two-factor interactions. The PB design in 12 runs, for example, may be used for an experiment containing up to 11 factors.

PB designs also exist for 20-run, 24-run, and 28-run (and higher) designs. With a 20-run design you can run a screening experiment for up to 19 factors, up to 23 factors in a 24-run design, and up to 27 factors in a 28-run design. These Resolution III designs are known as *Saturated Main Effect* designs because all degrees of freedom are utilized to estimate main effects. The designs for 20 and 24 runs are shown below.

These designs do not have a defining relation since interactions are not identically equal to main effects. With the $$2^{k=p}_{III}$$ designs, a main effect column $$X_i$$ is either orthogonal to $$X_i X_j$$ or identical to plus or minus $$X_i X_j$$. For Plackett-Burman designs, the two-factor interaction column $$X_i X_j$$ is correlated with every $$X_k$$ (for $$k$$ not equal to $$i$$ or $$j$$).

However, these designs are very useful for economically detecting large main effects, assuming all interactions are negligible when compared with the few important main effects.

### Anova

### Sensitivity

### Estimate number of runs 

## Modelling/Optimization

### Modelling Design

#### Changing One Single variable at a Time (COST)

#### Full Factorial designs

The **Full Factorial Design** is a systematic method for examining the effects and possible interactions of several factors on a response variable.

The aim is to analyze the relationship between several input  variables and output variables. Here, the input variables are called **Factors** and the output variables are called **Response Variable**. Under intrinsic assumption is that Factors are   This is not to be confused  as calculating the covariance in statistics, which stands for - How much an independent variable explains changes observed in a response variable.

#### 

#### Taguchi Orthogonal Array (TOA) Factorial



### Response Surface Method (RSM) Designs

#### Box-Wilson DesignOr Central Composite Designs (CCD) - 

A Box-Wilson Central Composite Design, commonly called 'a central composite design,' contains an imbedded factorial or fractional factorial design with center points that is augmented with a group of 'star points' that allow estimation of curvature. If the distance from the center of the design space to a factorial point is $\pm1$ unit for each factor, the distance from the center of the design space to a star point is $$|\alpha| > 1$$. The precise value of $$\alpha$$  depends on certain properties desired for the design and on the number of factors involved.

Similarly, the number of centerpoint runs the design is to contain also depends on certain properties required for the design.

![Diagram of central composite design generation for two factors](https://www.itl.nist.gov/div898/handbook/pri/section3/gifs/fig5.gif)



A central composite design always contains twice as many star points as there are factors in the design. The star points represent new extreme values (low and high) for each factor in the design. Table 3.22 summarizes the properties of the three varieties of central composite designs. Figure 3.21 illustrates the relationships among these varieties.

#### Box-Behnken designs

The Box-Behnken design is an independent quadratic design in that it does not contain an embedded factorial or fractional factorial design. In this design the treatment combinations are at the midpoints of edges of the process space and at the center. These designs are rotatable (or near rotatable) and require 3 levels of each factor. The designs have limited capability for orthogonal blocking compared to the central composite designs.

![3-D cube plot of Box-Behnken design for 3 factors](https://www.itl.nist.gov/div898/handbook/pri/section3/gifs/bb.gif)

The geometry of this design suggests a sphere within the process space such that the surface of the sphere protrudes through each face with the surface of the sphere tangential to the midpoint of each edge of the space.

### Properties and Elements of Design

#### Factors 

Process inputs* an investigator manipulates to cause a change in the output. Some factors cannot be controlled by the experimenter but may effect the responses. If their effect is significant, these *uncontrolled factors* should be measured and used in the data analysis. **Note**: The inputs can be discrete or continuous.

-   ***Crossed Factors\***: Two factors are *crossed* if every level of one occurs with every level of the other in the experiment. 
-   ***Nested Factors\***: A factor "A" is nested within another factor "B" if the levels or values of "A" are different for every level or value of "B". **Note**: Nested factors or effects have a hierarchical relationship.

#### Effect

How changing the settings of a factor changes the response. The effect of a single factor is also called a *main effect*. **Note:** For a factor A with two levels, [scaled ](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Scaling Factor)so that low = -1 and high = +1, the effect of A is estimated by subtracting the average response when A is -1 from the average response when A = +1 and dividing the result by 2 (division by 2 is needed because the -1 level is 2 scaled units away from the +1 level).

***Error\***: Unexplained variation in a collection of observations. **Note**: DOE's typically require understanding of both random error and lack of fit error. 

***Experimental Unit\***: The entity to which a specific treatment combination is applied. **Note**: an experimental unit can be a

-   PC board
-   silicon wafer
-   tray of components simultaneously treated
-   individual agricultural plants
-   plot of land
-   automotive transmissions
-   etc.



#### Design

A set of experimental runs which allows you to fit a particular model and estimate your desired effects.

While a **Design Matrix**  is a matrix description of an experiment that is useful for constructing and analyzing experiments.

#### Balanced Design:

An experimental design where all cells (i.e. treatment combinations) have the same number of observations.

#### Definitive screening designs

#### Blocking designs

A schedule for conducting [treatment combinations](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Treatment) in an experimental study such that any effects on the experimental results due to a known change in raw materials, operators, machines, etc., become concentrated in the levels of the blocking variable. **Note**: the reason for blocking is to isolate a systematic effect and prevent it from obscuring the main effects. Blocking is achieved by restricting [randomization](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Randomization).

#### Randomized block design

A schedule for allocating treatment material and for conducting treatment combinations in a DOE such that the conditions in one run neither depend on the conditions of the previous run nor predict the conditions in the subsequent runs. **Note**: The importance of randomization cannot be over stressed. Randomization is necessary for conclusions drawn from the experiment to be correct, unambiguous and defensible. 

#### Resolution

A term which describes the degree to which estimated main effects are [aliased ](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Alias:)(or [confounded](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Confounding)) with estimated 2-level [interactions](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Interactions:), 3-level interactions, etc. In general, the resolution of a design is one more than the smallest order interaction that some main effect is confounded (aliased) with. If some main effects are confounded with some 2-level interactions, the resolution is 3. **Note**:[ Full factorial](https://www.itl.nist.gov/div898/handbook/pri/section3/pri331.htm) designs have no confounding and are said to have resolution "infinity". For most practical purposes, a resolution 5 design is excellent and a resolution 4 design may be adequate. Resolution 3 designs are useful as economical [screening designs](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Screening). 

#### Interactions

Occurs when the effect of one factor on a response depends on the level of another factor(s). 

#### Orthogonality

Two vectors of the same length are orthogonal if the sum of the products of their corresponding elements is 0. **Note**: An experimental design is orthogonal if the effects of any factor balance out (sum to zero) across the effects of the other factors.

#### Confounding

A confounding design is one where some [treatment effects](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Treatment) (main or interactions) are estimated by the same linear combination of the experimental observations as some [blocking effects](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Blocking). In this case, the treatment effect and the blocking effect are said to be *confounded*. Confounding is also used as a general term to indicate that the value of a [main effect ](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#main)estimate comes from both the main effect itself and also contamination or bias from higher order [interactions. Note](https://www.itl.nist.gov/div898/handbook/pri/section7/pri7.htm#Interactions:): Confounding designs naturally arise when [full factorial designs](https://www.itl.nist.gov/div898/handbook/pri/section3/pri331.htm) have to be run in blocks and the block size is smaller than the number of different treatment combinations. They also occur whenever a [fractional factorial design](https://www.itl.nist.gov/div898/handbook/pri/section3/pri332.htm) is chosen instead of a full factorial design. 

#### Response Surface Designs

A DOE that fully explores the process window and models the responses. **Note**: These designs are most effective when there are less than 5 factors. Quadratic models are used for response surface designs and at least three levels of every factor are needed in the design.

#### Treatment

A treatment is a specific combination of factor levels whose effect is to be compared with other treatments.



## Verification/ Validation



## Final Remarks



## Reference

https://learnche.org/pid/contents

https://www.youtube.com/@datatab

https://www.itl.nist.gov/div898/handbook/pmd/section3/pmd31.htm

https://www.itl.nist.gov/div898/handbook/pri/section3/pri33.htm

https://help.synthesisplatform.net/doe9/doe_background.htm

https://www.synthace.com/blog/the-doe-process

https://help.reliasoft.com/reference/experiment_design_and_analysis/doe/doe_overview.html