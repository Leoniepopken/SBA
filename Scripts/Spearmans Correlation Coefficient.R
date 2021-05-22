# Insert your input here
x <- c(Eingabe)
y <- c(Eingabe)
n <- Eingabe
# -----------------------------------------------------------

rsp <- cor(x, y, method = "spearman")

# rsp > 0: positive monotonic relationship
# rsp < 0: negative monotonic relationship
# rsp ~ 0: no monotonic relationship
