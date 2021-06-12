# SBA

This README should provide a lot of the formulas disussed in the Lecture Statistics for BWL (especially those that are annoying 
to type ;)

Here is an overview of all formulas that are provided in this repository, so you can easily search for it.
I'll also try to provide some explanation and interpretation rules

# Descriptive statistics and exploratory data analysis

## Frequencies
- Calculation of absolute frequencies  <br>`table(x)`
- Calculation of relative frequencies  <br>`prop.table(table(x))`
- calculation of expected absolute frequencies  <br>`library(DescTools)`  <br>`ExpFreq(x)`
  
- marginal frequncies <br>`addmargins()`

 - ### Joint Frequencies
    - Contingency tables for visualization <br>`addmargins()`
    
- ### Conditional Frequencies
     - The conditional frequency distribution of 𝒀 under the condition 𝑿 = 𝒂i <br> `hij/hi`.
## Central Tendency measures
- mode: <br>
  `Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
  }
  mode <- Mode(x)`
- arithmetic mean:  <br> `mean(x)`
- median:  <br> `median(x)`
- Quantiles 0.2, 0.25, 0.5, 0.75  <br>
  `c(xordered[floor(n * 0.20) + 1], xordered[floor(n * 0.25) + 1], xordered[floor(n * 0.5) + 1], xordered[floor(n * 0.75) + 1])`
- interquartile range  <br>`(xordered[floor(n * 0.75) + 1]) - (xordered[floor(n * 0.25) + 1])`
- range of distribution  <br>`xordered[which.max(xordered)] - xordered[which.min(xordered)]`
 - ### Explanation
    - Median: At least 50% of the values in the data are less or equal / greater than the median
 - ### Interpretation
    - arithmetic mean ~ median ~ mode: data is symmetric
    - arithmetic mean > median > mode: data is left-skewed
    - arithmetic mean < median < mode: data is right-skewed
  
## Bravias-Pearson correlation coefficient
- `cor(x, y, method = "pearson")`
- ### Interpretation
    - „weak correlation“ |r| < 0.5
    - „medium correlation“ 0.5 ≤ |r| < 0.8
    - „strong correlation“ 0.8 ≤ |r|

## Coefficient of Determination / Linear Regression
- calculation of least squares estimator <br> 
  `b <- (sum(x*y) - n*mean(y)*mean(x)) / (sum(x*x) - n*mean(x)*mean(x))`  <br>
  `a <- mean(y) - b*mean(x)`
- predicted value of Y for any value of X  <br> `a + b * x`
- total dispersion of yi
    - SQT <br> `sum((y - mean(y)) * (y - mean(y)))`
    - SQE  <br> `sum((Y - mean(y)) * (Y - mean(y)))`
    - SQR  <br>`sum((y - Y) * (y - Y))`
- coefficient of determination R² as a measure for the quality of the model  <br>`SQE / SQT`
- Alternative Formula  <br>`1 - (SQR / SQT)`
- ### Properties of the coefficient of determination
  R² = 0 explained dispersion zero -> regression model is extremely bad
  R² = 1 explained dispersion = total dispersion -> regression model is perfectly fitted to data


## Contingency and x2 coefficient
- calculation of chi-squared-coefficient. <br>
  `library(vcd)`  <br>
  `assocstats(x)`  <br>
  (For the chi coefficient we are intersted in the Pearsons chi squared)
- calculation of Contingency Coefficient <br>  `assocstats(x)[4]`
  
- ### Interpretation
    - 𝝌𝟐 is small (close to zero) if 𝑿 and 𝒀 do not depend on each other
    - 𝝌𝟐 is large if 𝑿 and 𝒀 depend on each other
    - 𝑲∗ = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
    - 𝑲∗ = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

## Empirical covariance
- sxy  <br>`1/n * (sum((x - mean(x)) * (y - mean(y))))`
- sxx  <br>`1/n * (sum((x - mean(x)) * (x - mean(y))))`
- ### Interpretation
  - With a positive linear relationship between 𝑋 and 𝑌, we obtain sxy > 0 (positive covariance)
  - With a negative linear relationship between 𝑋 and 𝑌, we obtain sxy < 0 (negative covariance)  
  - If there is no linear relationship between 𝑋 and 𝑌, then sxy ≈ 0

## Measurement of Dispersion
- empirical variance (s^2) <br>  `(1/n) * (sum((x - mean(x)) * (x - mean(x))))`
- Standard deviation (s)  <br>`sqrt((1/n) * (sum((x - mean(x)) * (x - mean(x)))))`
- sample variance  <br>`(1/(n-1)) * sum((x-mean(x))*(x-mean(x)))`
- Coefficient of Variation  <br> `(sqrt((1/n) * (sum((x - mean(x)) * (x - mean(x)))))) / mean(x)`

- ### Properties of Variance and Standard Deviation
  - Variance and standard deviation unfortunately are senstive with respect to outliers
  - With larger (average) values usually also variance and standard deviation are larger
  - Makes comparison of dispersions of different distributions more difficult
  
- ### Properties of Coefficient of Variation
  - more suitable for dispersion comparison of distributions with very different (average) values
  - It is only considered if the values of the original data set are non-negative and mean(x) > 0


## Method of Least Squares
- calculation of least squares estimators  <br> `b <- (sum(x*y) - n*(mean(y)*mean(x))) / (sum(x*x) - n*(mean(x)*mean(x)))`
  <br> `a <- mean(y) - b*mean(x)`
- calculation of predicted value of Y for any value of X  <br> `a + b * x`
- calculation of residuals (errors)  <br>residuals <- `y - Y`

## Spearmans Correlation Coefficient
- calculation of Spearmans (Rang-) Korrelationskoeffizient <br>`cor(x, y, method = "spearman")`
- ### Interpretation
  - rsp > 0: positive monotonic relationship
  - rsp < 0: negative monotonic relationship
  - rsp ≈ 0: no monotonic relationship

<h/> ------------------------------------------------------------------------------------------------------------------------

# Probability Theorie

## Laplace probability

A random experiment in which all possible outcomes have the same probability, is called Laplace experiment.
- probability P(A) of an event A out of Omega <br>
  `number of outcomes for which event A occurs / number of all possible outcomes`
  
- urn experiment: possibilities with putting back <br> `population ^ sample size = N ^ n`
- urn experiment: possibilities without putting back <br> `N ⋅ (N − 1) ⋅ (N − 2) ⋅ . . . ⋅ (N − n + 1)
  `
  
- ### Properties
  - 0 <= P(A) <= 1 for all A out of Omega
  - the impossible event has probability 0
  - if A out of B holds, then event B has at least the probability of event A
  - the probability of the complementary event has the probability 1 - P(A)
  - For disjoint events the following formula holds: P(A and B) = P(A) + P(B)
  
## Conditional properities
Conditional probability of A given (the conditional) B in a Laplace Experiment
- `P(A|B) = |(A and B)| / |B| = P(A and B) / P(B)`
- ### Properties
  - Conditional probabilities are numbers between 0 and 1
  - The impossible event ∅ has conditional probability 0
  - If 𝑨 ⊆ 𝑪 holds, then event 𝑪 has at least the same conditional probability as event 𝑨
  - Calculation of the conditional probability of the complementary event see slides
  - P(A and C|B) = P(A|B) + P(C|B) - P(A and C|B) for all B in Omega with P(B) > 0
  - P(A and B) = P(A|B) * P(B) for all A and B in Omega with P(B) > 0
  - Law of probability see slides

## Independence of discrete random variables
The following functions needs three parameters as input: P(A), P(B) and P(A and B) and returns information about the dependence of the events<br>
`dependence <- function(PA, PB, PAB){ if(PA * PB == PAB) { return  ("These events are independent")} else {return ("These events are dependent") }}`








