#### R Code for t-tests ####
### Aug 03, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Basics/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

### Conductin One-Sample t-test and Constructing One-Sample Confidence Interval for the Mean
# The one-sample t-test and confidence interval are parametric methods appropriate for 
# examining a single numberic variable

help(t.test)
# before beginning any analysis its useful to examine the data, e.g. using a boxplot or histogram
boxplot(LungCap)
# H_0: mu < 8
# also produce a 95% confidence interval for mu
t.test(LungCap, mu = 8, alternative = "less", conf.leve = 0.95)
# 95% confidence interval, -IN 8.025974 means (-Inf, 8.025974)
t.test(LungCap, mu = 8, alt = "less", conf = 0.95)
# two-sided
t.test(LungCap, mu = 8, alt = "two.sided", conf = 0.95)
# two.sided is default so don't need to specify it,
t.test(LungCap, mu = 8, conf = 0.95)
t.test(LungCap, mu = 8, conf = 0.99)
TEST <- t.test(LungCap, mu = 8, conf = 0.99)
TEST
attributes(TEST)
TEST$conf.int
TEST$p.value


### Conducting the independent 2-sample t-test Confidence Interval
# These are parametric methods appropriate for examining the difference in means 
# for 2 populations, they are ways of examining the relationship between a numberic 
# variable (Y) and a categorical explanatory variable (X, with 2 levels)

boxplot(LungCap ~ Smoke)
# H0: mean lung cap pf smokers = of non smokers
# two sided test
# assume non - equal variances

t.test(LungCap ~ Smoke, mu = 0, alt = "two.sided", conf = 0.95, var.eq = F, paired = F)
# values above are all default values
t.test(LungCap ~ Smoke)

t.test(LungCap[Smoke == "no"], LungCap[Smoke == "yes"])

# assuming equal variance
t.test(LungCap ~ Smoke, mu = 0, alt = "two.sided", conf = 0.95, var.eq = T, paired = F)

# how to decide whether to assume equal or unequal variance
# we could examine the boxplot produced earlier. Alternatively we can compute the actual sample variances
var(LungCap[Smoke == "yes"])
var(LungCap[Smoke == "no"])
# We can also compute Levene's test, where
# H_0: population variances are equal
# need to imply the CAR package for this (see tutorial 1.10 for how to install packages in R)
library(car)
leveneTest(LungCap~Smoke)
# small p-value suggests we should reject H_0 of equal variance 



















