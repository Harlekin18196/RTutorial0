#### R Code for Contingency tables ####
### July 31, 2016 ####

# This is to read in the data, and save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

femaleLungCap <- LungCap[Gender == "female"]

table1 <- table(Smoke,Gender)

barplot(table1)
barplot(table1,beside = T)
barplot(table1,beside = T,legend.text=T)
barplot(table1,beside = T,legend.text=c("Non-Smoke", "Smoker"))
barplot(table1,beside = T,legend.text=c("Non-Smoke", "Smoker"), main = "Gender and Smoking", xlab = "Gender")
barplot(table1,beside = T,legend.text=c("Non-Smoke", "Smoker"), main = "Gender and Smoking", xlab = "Gender",las = 1)
barplot(table1,beside = T,legend.text=c("Non-Smoke", "Smoker"), main = "Gender and Smoking", xlab = "Gender",las = 1,col = c(2,4))

mosaicplot(table1)