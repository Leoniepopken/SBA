# SBA

These scripts provided in this repository should provide a lot of the formulas disussed in the Lecture Statistics for BWL (especially those that are annoying 
to type ;)

All input should be insert above the lines in the scripts. The places for that are marked.

Here is an overview of all formulas that are provided in this repository, so you can easily search for it.
I'll also try to provide some explanation and interpretation rules

## Frequencies
- Calculation of absolute frequencies
- Calculation of relative frequencies
- calculation of expected absolute frequencies

## Central Tendency measures
- mode
- arithmetic mean
- median
- Quantiles 0.2, 0.25, 0.5, 0.75
- interquartile range
- range of distribution
 - ### Explanation
    - Median: At least 50% of the values in the data are less or equal / greater than the median
 - ### Interpretation
    - arithmetic mean ~ median ~ mode: data is symmetric
    - arithmetic mean > median > mode: data is left-skewed
    - arithmetic mean < median < mode: data is right-skewed
  
## Bravias-Pearson correlation coefficient
- arithmetic means
- Basic Formula for Bravias-Pearson correlation coefficient
- Alternative, computationally more efficient formula for the Bravais-Pearson correlation coefficient
- Comment out the formula you don't need
- ### Interpretation
    - „weak correlation“ |r| < 0.5
    - „medium correlation“ 0.5 ≤ |r| < 0.8
    - „strong correlation“ 0.8 ≤ |r|

## Coefficient of Determination / Linear Regression
- calculation of east squares estimator
- predicted value of Y for any value of X
- total dispersion of yi
    - SQT
    - SQE
    - SQR
- coefficient of determination RR as a measure for the quality of the model
- Alternative Formula

## Contingency and x2 coefficient
- calculation of chi-squared-coefficient.
- calculation of (corrected) Contingency Coefficient
- ### Interpretation
    - 𝝌𝟐 is small (close to zero) if 𝑿 and 𝒀 do not depend on each other
    - 𝝌𝟐 is large if 𝑿 and 𝒀 depend on each other
    - 𝑲∗ = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
    - 𝑲∗ = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

## Empirical covariance
- sxy 
- sxx
- ### Interpretation
  - With a positive linear relationship between 𝑋 and 𝑌, we obtain sxy > 0 (positive covariance)
  - With a negative linear relationship between 𝑋 and 𝑌, we obtain sxy < 0 (negative covariance)  
  - If there is no linear relationship between 𝑋 and 𝑌, then sxy ≈ 0

## Measurement of Dispersion
- Standard deviation
- sample variance
- Coefficient of Variation

## Method of Least Squares
- calculation of east squares estimator
- calculation of predicted value of Y for any value of X
- calculation of residuals (errors)

## Spearmans Correlation Coefficient
- calculation of Spearmans (Rang-) Korrelationskoeffizient
- Alternative, computationally more efficient formula in the case without ties (all values different):
- ranks
- ### Interpretation
  - rsp > 0: positive monotonic relationship
  - rsp < 0: negative monotonic relationship
  - rsp ≈ 0: no monotonic relationship











