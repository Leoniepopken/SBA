# insert your input here
x <- c(1,2,3,50,20)
y <- c(20, 30, 1, 9, 45)
n <- 5
# ------------------------------------------------------------------

# arithmetic means
arthX <- mean(x)
arthY <- mean(y)
# empirical covariance
sxy <- 1/n * (sum((x - arthX) * (y - arthY)))
# sxy > 0: positive linear relationship between 𝑋 and Y
# sxy < 0: negative linear relationship between 𝑋 and Y
# sxy ~ 0: no linear relationship between 𝑋 and Y
sxx <- 1/n * (sum((x - arthX) * (x - arthX)))

