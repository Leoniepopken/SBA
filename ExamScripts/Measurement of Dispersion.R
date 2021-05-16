# input
x <- c(Eingabe)
n <- length(x)
# Empirical Standard Deviation
arithX <- 1/n * sum(c)
Ssquare <- 1/n * sum((x - arithX) * (x - arithX))

# Standard deviation
s <- sqrt(Ssquare)

# sample variance
sv <- (1/(n-1)) * sum((x-arithX)*(x-arithX))

