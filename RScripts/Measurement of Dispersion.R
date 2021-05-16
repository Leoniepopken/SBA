# insert your input here
x <- c(Eingabe)
n <- length(x)
# --------------------------------------------------------------

# Empirical Standard Deviation/ empirical varianve
arithX <- 1/n * sum(x)
Ssquare <- (1/n) * (sum((x - arithX) * (x - arithX)))

# Standard deviation
s <- sqrt(Ssquare)

# sample variance
sv <- (1/(n-1)) * sum((x-arithX)*(x-arithX))

# Coefficient of Variation
v <- s / arithX

