# Insert your input here
 x <- matrix(c(Eingabe), nrow = 3, ncol = 2, byrow = TRUE)


# Calculation of absolute frequencies
absFreq <- table(x)

# Calculation of relative frequencies
relFreq <- x / sum(x)

# calculation of expected absolute frequencies
library(DescTools)
expectedFrequency <- ExpFreq(x)




