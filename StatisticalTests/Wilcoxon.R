#### R Code for Mann-Whitney U-test ####
### Aug 05, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Basics/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

# The Mann-Whitney U test (also known as  Rank-Wilkoxon test) is a non - parametric method (meaning we don't assume the  particular underlying distributions) appropriate for examining the difference in Medians for two independent populations. It is a way of examining the relationship between a numeric outcome variable (Y) and a categorical explanatory variable (X, with 2 levels) when groups are independent.

help("wilcox.test")
boxplot(LungCap ~ Smoke)
# H_0: Median Lung Capacity of smokers = that of non smokers
# two - sided test
wilcox.test(LungCap ~ Smoke, mu = 0, alt = "two.sided", conf.int = T, conf.leve = 0.95, paired = F, exact = T, correct = T)
wilcox.test(LungCap ~ Smoke, mu = 0, alt = "two.sided", conf.int = T, conf.leve = 0.95, paired = F, exact = F, correct = T)