# Input Matrix
mdata <- matrix(c(4,4,1,4,4,1,4,1,1,4,1,1,4,3,1,1,1,5,1,1,1,3,1,3,4,1,4,1,1,4,4,4,1,1,1,1), nrow = 3, ncol = 12, byrow = TRUE)

# Calculation of relative frequencies
relFreq <- table(mdata) / (nrow(mdata) * ncol(mdata))



