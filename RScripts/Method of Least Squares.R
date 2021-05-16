# Determine straight line that is as close as possible to the observed points using linear regression
# insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# ---------------------------------------------------------------------

# arithmetic means
arthX <- 1/n * sum(x)
arthY <- 1/n * sum(y)
# calclulate the beta
beta <- (sum(x*y) - n*arthY*arthX) / (sum(x*x) - n*arthX*arthX)
# calculate the alpha
alpha <- arthY - beta*arthX
# predicted value of Y for any value of X
Y <- alpha + beta * x
# calculation of residuals (errors)
residuals <- y - Y



