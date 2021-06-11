# SBA

This README should provide a lot of the formulas disussed in the Lecture Statistics for BWL (especially those that are annoying 
to type ;)

Here is an overview of all formulas that are provided in this repository, so you can easily search for it.
I'll also try to provide some explanation and interpretation rules

## Frequencies
- Calculation of absolute frequencies  <br>table(x)
- Calculation of relative frequencies  <br>prop.table(table(x))
- calculation of expected absolute frequencies  <br>library(DescTools)  <br>ExpFreq(x)
  
- marginal frequncies <br>addmargins()

 - ### Joint Frequencies
    - Contingency tables for visualization <br>addmargins()
    
- ### Conditional Frequencies
     - The conditional frequency distribution of 𝒀 under the condition 𝑿 = 𝒂i <br> hij/hi.
## Central Tendency measures
- mode: <br>
  Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
  }
  mode <- Mode(x)
- arithmetic mean:  <br> mean(x)
- median:  <br> median(x)
- Quantiles 0.2, 0.25, 0.5, 0.75  <br>
  c(xordered[floor(n * 0.20) + 1], xordered[floor(n * 0.25) + 1], xordered[floor(n * 0.5) + 1], xordered[floor(n * 0.75) + 1])
- interquartile range  <br>(xordered[floor(n * 0.75) + 1]) - (xordered[floor(n * 0.25) + 1])
- range of distribution  <br>xordered[which.max(xordered)] - xordered[which.min(xordered)]
 - ### Explanation
    - Median: At least 50% of the values in the data are less or equal / greater than the median
 - ### Interpretation
    - arithmetic mean ~ median ~ mode: data is symmetric
    - arithmetic mean > median > mode: data is left-skewed
    - arithmetic mean < median < mode: data is right-skewed
  
## Bravias-Pearson correlation coefficient
- Bravais-Pearson-Coeffiecient <- cor(x, y, method = "pearson")
- ### Interpretation
    - „weak correlation“ |r| < 0.5
    - „medium correlation“ 0.5 ≤ |r| < 0.8
    - „strong correlation“ 0.8 ≤ |r|

## Coefficient of Determination / Linear Regression
- calculation of least squares estimator <br> 
  `b <- (sum(x*y) - n*mean(y)*mean(x)) / (sum(x*x) - n*mean(x)*mean(x))`  <br>
  `a <- mean(y) - b*mean(x)`
- predicted value of Y for any value of X  <br> a + b * x
- total dispersion of yi
    - SQT <br> sum((y - mean(y)) * (y - mean(y)))
    - SQE  <br> sum((Y - mean(y)) * (Y - mean(y)))
    - SQR  <br>sum((y - Y) * (y - Y))
- coefficient of determination RR as a measure for the quality of the model  <br>SQE / SQT
- Alternative Formula  <br>1 - (SQR / SQT)

## Contingency and x2 coefficient
- calculation of chi-squared-coefficient. <br>
  library(vcd)  <br>
  assocstats(x)  <br>
  (For the chi coefficient we are intersted in the Pearsons chi squared)
- calculation of Contingency Coefficient <br>  assocstats(x)[4]
  
- ### Interpretation
    - 𝝌𝟐 is small (close to zero) if 𝑿 and 𝒀 do not depend on each other
    - 𝝌𝟐 is large if 𝑿 and 𝒀 depend on each other
    - 𝑲∗ = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
    - 𝑲∗ = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

## Empirical covariance
- sxy  <br>1/n * (sum((x - mean(x)) * (y - mean(y))))
- sxx  <br>1/n * (sum((x - mean(x)) * (x - mean(y))))
- ### Interpretation
  - With a positive linear relationship between 𝑋 and 𝑌, we obtain sxy > 0 (positive covariance)
  - With a negative linear relationship between 𝑋 and 𝑌, we obtain sxy < 0 (negative covariance)  
  - If there is no linear relationship between 𝑋 and 𝑌, then sxy ≈ 0

## Measurement of Dispersion
- empirical variance (s^2) <br>  (1/n) * (sum((x - mean(x)) * (x - mean(x))))
- Standard deviation (s)  <br>sqrt((1/n) * (sum((x - mean(x)) * (x - mean(x)))))
- sample variance  <br>(1/(n-1)) * sum((x-mean(x))*(x-mean(x)))
- Coefficient of Variation  <br> (sqrt((1/n) * (sum((x - mean(x)) * (x - mean(x)))))) / mean(x)

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
- calculation of predicted value of Y for any value of X  <br> a + b * x
- calculation of residuals (errors)  <br>residuals <- y - Y

## Spearmans Correlation Coefficient
- calculation of Spearmans (Rang-) Korrelationskoeffizient <br>cor(x, y, method = "spearman")
- ### Interpretation
  - rsp > 0: positive monotonic relationship
  - rsp < 0: negative monotonic relationship
  - rsp ≈ 0: no monotonic relationship











