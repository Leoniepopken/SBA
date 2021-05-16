# Insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# -----------------------------------------------------------

# arithmetic means
arthX <- 1/n * sum(x)
arthRankX <- 1/n * sum(rank(x))
arthRankY <- 1/n * sum(rank(y))
# calcularion of Spearmans (Rang-) Korrelationskoeffizient
zaehler <- sum((rank(x)- arthRankX) * (rank(y) - arthRankY))
nenner <- sqrt((sum((rank(x) - arthRankX) * (rank(x) - arthRankX))) * (sum((rank(y) - arthRankY) * (rank(y) - arthRankY))))
rsp <- zaehler/nenner
# Alternative, computationally more efficient formula in the case without ties (all values different):
d <- rank(x) - rank(y)
rspAlt <- 1 - ((6 * sum(d*d)) / (n*(n*n-1)))

# rsp > 0: positive monotonic relationship
# rsp < 0: negative monotonic relationship
# rsp ~ 0: no monotonic relationship
