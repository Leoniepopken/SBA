# insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# ------------------------------------------------------------------

# arithmetic means
arthX <- 1/n * sum(x)
arthY <- 1/n * sum(y)
# empirical covariance
sxy <- 1/n * (sum((x - arthX) * (y - arthY)))
# sxy > 0: positive linear relationship between 𝑋 and Y
# sxy < 0: negative linear relationship between 𝑋 and Y
# sxy ~ 0: no linear relationship between 𝑋 and Y
sxx <- 1/n * (sum((x - arthX) * (x - arthX)))

