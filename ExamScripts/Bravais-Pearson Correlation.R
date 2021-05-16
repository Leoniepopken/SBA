# Measurement of strength of linear relationship
# The closer the pairs (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) are to a straight line with positive slope, the closer 𝑟 is to 1
# The closer the pairs (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) are to a straight line with negative slope, the closer 𝑟 is to -1

x <- c(Eingabe)
y <- c(Eingabe)
# arithmetic means
n <- Eingabe
arthX <- 1/n * sum(x)
arthY <- 1/n * sum(y)
# Basic Formula for Bravias-Pearson correlation coefficient
zaehler <- sum((x - arthX) * (y - arthY))
nenner <- sqrt(sum((x - arthX) * (x - arthX)) * sum((y - arthY) * (y - arthY)))
r <- zaehler / nenner
# Alternative, computationally more efficient formula for the Bravais-Pearson correlation coefficient
zaehlerAlt <- sum(x*y) - n*arthX*arthY
nennerAlt <- sqrt((sum(x*x) - n*arthX*arthX) * (sum(y*y) - n*arthY*arthY))
rAlt <- zaehlerAlt / nennerAlt


