n <- 1349
# Input for the matrix
mdata <- matrix(c(278, 174, 39, 106, 57, 63, 281, 158, 10, 72, 82, 29), nrow = 2, ncol = 6, byrow = TRUE)
# calculation of expected absolute frequencies
# Warning: For ExpFreq() you need to install and use the package DescTools
expected <- ExpFreq(mdata)
# calculation of chi-squared-coefficient. Note that chi is a list. You have to write the value you need next to Chi
chi <- chisq.test(mdata)
Chi <- 36.29473
# calculation of (corrected) Contingency Coefficient
M <- min(nrow(mdata), ncol(mdata))
Kmax <- sqrt((M-1)/M)
K <- sqrt((Chi) /(n + Chi))
Kcorr <- K / Kmax
# 𝑲corr = 𝟎 (or close to zero) if 𝑿 and 𝒀 are not (or only very weakly) dependent on each other
# 𝑲corr = 𝟏 (or close to one) if 𝑿 und 𝒀 are strongly dependent on each other

