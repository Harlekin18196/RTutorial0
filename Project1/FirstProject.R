#### R Code for Project #1 ####
### July 30, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

# this is to set the working directory
# First, save the pat to the WD in the object ?projectWD?
projectWD <- "/Users/elisabethgrieger/Documents/RTutorials/Project1"

# Then set the WD using this object
setwd(projectWD)

# We can check to make sure that worked
getwd()

# Load the previous workspace session
load("FirstProject.RData")

# Check all that is saved in the workspace
ls()

# Calculate and save the mean age
MeanAge <- mean(Age)

# Make a histogram of Age
hist(Age)

# Produce a summary of the data
summary(LungCapData)

# Conduct a t-test for comparing mean LungCap of smokers and non-smokers
t.test(LungCap ~ Smoke)

# When done for the day, save the current workspace image
save.image("FirstProject.Rdata")

# Also make sure to save the .R file (the scrip)

# Depending on your preference, you may want to clear the workspace after saving
rm(list = ls())

class(Gender)

mean(Age)

