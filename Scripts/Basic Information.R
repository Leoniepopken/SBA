# replace "input" with your data. If you have a matrix, please create a matrix out of you input
x <- c(5,9,6,7,3,1,5,2,6,7)

Mode <- function(x) { ux <- unique(x)
   ux[which.max(tabulate(match(x, ux)))] }
mode <- Mode(x)
median <- mean(x)
quartile25 <- sort(x)[floor(length(x) * 0.25) + 1]

info <- c(mode, median, quartile25)
names(info) <- c("mode", "median", "quartile25")


