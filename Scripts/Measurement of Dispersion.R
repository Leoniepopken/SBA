# insert your input here
x <- c(Eingabe)
n <- length(x)
# --------------------------------------------------------------

# Empirical Standard Deviation/ empirical varianve
Ssquare <- (1/n) * (sum((x - mean(x)) * (x - mean(x))))

# Standard deviation
s <- sqrt(Ssquare)

# sample variance
sv <- (1/(n-1)) * sum((x-mean(x))*(x-mean(x)))

# Coefficient of Variation
v <- s / mean(x)

