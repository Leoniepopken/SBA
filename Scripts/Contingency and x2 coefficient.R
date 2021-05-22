# Insert you Input here
x <- matrix(c(input), nrow = 3, ncol = 2, byrow = TRUE)
y <- input
n <- sum(x) # or other input
# -------------------------------------------------------------------

# calculation of expected absolute frequencies
library(DescTools)
expectedFreuquencies <- ExpFreq(x)

# calculation of chi-squared-coefficient.
library(vcd)
assocstats(table(x, y))
# For the chi coefficient we are intersted in the Pearsons chi squared
# 𝝌𝟐 is small (close to zero) if 𝑿 and 𝒀 do not depend on each other
# 𝝌𝟐 is large if 𝑿 and 𝒀 depend on each other

# corrected contingencyCoeff
CorrectedContigencyCoeff <- function (x,y){
  library(vcd)
  k <- length(unique(x))
  m <- length(unique(x))
  M <- min(x,y)
  K_max <- sqrt((M-1) / M)
  K_star <- assocstats(table(x,y))$cont / K_max
  return(K_star)
}

KStar <- CorrectedContigencyCoeff(x, y)
# 𝑲Star = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
# 𝑲Star = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

