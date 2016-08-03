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