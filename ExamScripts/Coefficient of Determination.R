# # Insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
-------------------------------------------------------------------

# arithmetic means
arthX <- 1/n * sum(x)
arthY <- 1/n * sum(y)
# calclulate the beta
beta <- (sum(x*y) - n*arthY*arthX) / (sum(x*x) - n*arthX*arthX)
# calculate the alpha
alpha <- arthY - beta*arthX
# predicted value of Y for any value of X
predictedY <- alpha + beta * x
# total dispersion of yi
SQT <- sum((y - arthY) * (y - arthY))
SQE <- sum((predictedY - arthY) * (predictedY - arthY))
SQR <- sum((y - predictedY) * (y - predictedY))

# coefficient of determination RR as a measure for the quality of the model
RR <- SQE / SQT
# Alternative Formula
RRAlt <- 1 - (SQR / SQT)

# 𝑅𝑅 = 0 explained dispersion zero regression model extremely bad
# 𝑅𝑅 = 1 explained dispersion = total dispersion regression model perfectly fitted to data
# (observed data points (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) all lie on the regression line)