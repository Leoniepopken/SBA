# Determine straight line that is as close as possible to the observed points using linear regression
# insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# ---------------------------------------------------------------------

# calclulate the beta
beta <- (sum(x*y) - n*mean(y)*mean(x)) / (sum(x*x) - n*mean(x)*mean(x))
# calculate the alpha
alpha <- mean(y) - beta*mean(x)
# predicted value of Y for any value of X
Y <- alpha + beta * x
# calculation of residuals (errors)
residuals <- y - Y



