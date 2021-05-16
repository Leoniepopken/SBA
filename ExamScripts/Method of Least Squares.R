# Determine straight line that is as close as possible to the observed points using linear regression

x <- c(8.5,10.31,12.08,10.51,10.25,10.01,6.56,7.39,7)
y <- c(539,649,768,667,651,646,421,470,450)
# arithmetic means
n <- 9
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



