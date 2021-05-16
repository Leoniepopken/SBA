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
# total dispersion of yi
SQT <- sum((y - arthY) * (y - arthY))
SQE <- sum((Y - arthY) * (Y - arthY))
SQR <- sum((y - Y) * (y - Y))

# coefficient of determination as a measure for the quality of the model
RR <- SQE / SQT
# Alternative Formula
RRAlt <- 1 - (SQR / SQT)

# 𝑅𝑅 = 0 explained dispersion zero regression model extremely bad
# 𝑅𝑅 = 1 explained dispersion = total dispersion regression model perfectly fitted to data
# (observed data points (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) all lie on the regression line)