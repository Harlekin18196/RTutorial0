#### R Code for Histograms ####
### July 31, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

hist(LungCap, freq = F)
hist(LungCap, prob = T)

hist(LungCap, prob = T, ylim = c(0,0.2))

hist(LungCap, prob = T, ylim = c(0,0.2))

hist(LungCap, prob = T, ylim = c(0,0.2), breaks=7)
hist(LungCap, prob = T, ylim = c(0,0.2), breaks=14)
hist(LungCap, prob = T, ylim = c(0,0.2), breaks=c(0,2,4,6,8,12,14,16))
hist(LungCap, prob = T, ylim = c(0,0.2), breaks=seq(from=0, to=16,by=2))
hist(LungCap, prob = T, ylim = c(0,0.2), breaks=seq(from=0, to=16,by=2),main = "Boxplot of Lungcapacity", xlab = "Lung Capacity")
hist(LungCap, prob = T, ylim = c(0,0.2), breaks=seq(from=0, to=16,by=2),main = "Boxplot of Lungcapacity", xlab = "Lung Capacity", las = 1)
lines(density(LungCap))
lines(density(LungCap),col=2,lwd=3)



