# Measurement of strength of linear relationship
# The closer the pairs (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) are to a straight line with positive slope, the closer 𝑟 is to 1
# The closer the pairs (𝑥𝑥𝑖𝑖, 𝑦𝑦𝑖𝑖) are to a straight line with negative slope, the closer 𝑟 is to -1

# Insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# -------------------------------------------------------------------

# arithmetic means
arithmeticMeanOfX <- 1/n * sum(x)
arithmeticMeanOfY <- 1/n * sum(y)
# Basic Formula for Bravias-Pearson correlation coefficient
BraviasCoefficient <- (sum((x - arithmeticMeanOfX) * (y - arithmeticMeanOfY))) /
  (sqrt(sum((x - arithmeticMeanOfX) * (x - arithmeticMeanOfX)) * sum((y - arithmeticMeanOfY) * (y - arithmeticMeanOfY))))
# Alternative, computationally more efficient formula for the Bravais-Pearson correlation coefficient
# zaehlerAlt <- sum(x*y) - n*arithmeticMeanOfX*arithmeticMeanOfY
# nennerAlt <- sqrt((sum(x*x) - n*arithmeticMeanOfX*arithmeticMeanOfX) * (sum(y*y) - n*arithmeticMeanOfY*arithmeticMeanOfY))
# rAlt <- zaehlerAlt / nennerAlt


