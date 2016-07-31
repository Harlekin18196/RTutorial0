#### R Code for Scatter plots ####
### July 31, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

cor(Age,Height)

plot(Age, Height)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height")
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25))
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5,pch = 8)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5,pch = 8,col = 2)

abline(lm(Height ~Age))
abline(lm(Height ~Age),col = 4)

lines(smooth.spline(Age,Height))
lines(smooth.spline(Age,Height),lty=2,lwd=5)