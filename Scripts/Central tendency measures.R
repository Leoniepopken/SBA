# Insert your input here
x <- c(Eingabe)
n <- Eingabe
# -------------------------------------------------------------------

xordered <- x[order(x)]

# mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode <- Mode(x)

# arithmetic mean
arith <- 1/n * sum(x)

# median
median <- median(x)

# Quantiles 0.2, 0.25, 0.5, 0.75
quantiles <- c(xordered[floor(n * 0.20) + 1], xordered[floor(n * 0.25) + 1], xordered[floor(n * 0.5) + 1], xordered[floor(n * 0.75) + 1])
# interquartile range
interquartileRange <- (xordered[floor(n * 0.75) + 1]) - (xordered[floor(n * 0.25) + 1])

# range of distribution
rangeOfDistribution <- xordered[which.max(xordered)] - xordered[which.min(xordered)]
