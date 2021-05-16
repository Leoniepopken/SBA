# Insert you Input here
x <- matrix(c(Eingabe), nrow = 3, ncol = 2, byrow = TRUE)
-------------------------------------------------------------------

n <- sum(x)
# calculation of expected absolute frequencies
# Warning: For ExpFreq() you need to install and use the package DescTools
expectedFreuquencies <- ExpFreq(x)
# calculation of chi-squared-coefficient. Note that chi is a list. You have to write the value you need next to Chi
chi <- chisq.test(x)
Chi <- Eingabe
# calculation of (corrected) Contingency Coefficient
M <- min(nrow(x), ncol(x))
Kmax <- sqrt((M-1)/M)
K <- sqrt((Chi) /(n + Chi))
Kcorr <- K / Kmax
# 𝑲corr = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
# 𝑲corr = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

