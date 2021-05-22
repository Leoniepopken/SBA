# Bar diagrams
# absolute frequency
plot(table(Data), ylab = Y-AchseBeschriftung)
# relative frequency
plot(prop.table(Data), ylab = Beschriftung)

# Column charts
# absolute frequency
barplot(table(Data), ylab = Beschriftung, col = Farbe)
# relative frequency
barplot(prop.table(Data), ylab = Beschriftung, col = Farbe)

# Bar charts
# absolute frequency
par(mar = c(number of lines of margin to be specified on the four sides of the plot))
barplot(table(Data), xlab = "Beschriftung", horiz = TRUE, las = 1, col = blues9)
# relative frequency
par(mar = c(number of lines of margin to be specified on the four sides of the plot))
barplot(prop.table(Data), xlab = "Beschriftung", horiz = TRUE, las = 1, col = blues9)

# pie charts
pie(table(Data), col = blues9)

# Histograms
histogram(Data, breaks = seq(), xlab = "Bezeichnung", ylab = "Bezeichnung")
