#### R Code for numerical summary of data ####
### July 31, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

table(Smoke)
table(Smoke)/725

length(Smoke)

table(Smoke)/length(Smoke)

table(Smoke, Gender)

mean(LungCap)
mean(LungCap,trim = 0.1)

median(LungCap)

var(LungCap)
sd(LungCap)
sqrt(var(LungCap))
sd(LungCap)^2

min(LungCap)
max(LungCap)
range(LungCap)
quantile(LungCap,probs = 0.90)
quantile(LungCap,probs = c(0.2,0.5,0.9,1))

sum(LungCap)
sum(LungCap)/725

cor(LungCap,Age)
cor(LungCap,Age,method="spearman")
cov(LungCap,Age)
var(LungCap,Age)

summary(LungCap)
summary(Smoke)
summary(LungCapData)