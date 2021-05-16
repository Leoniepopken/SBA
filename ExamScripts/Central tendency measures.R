# Data input
x <- c(1, 3, 5, 9, 5, 2, 1, 5, 3, 1)
n <- length(x)
# mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode <- Mode(x)

# arithmetic mean
arith <- 1/n * sum(x)

# median
median <- mean(x)

# Quantiles
quantiles <- quantile(x)
