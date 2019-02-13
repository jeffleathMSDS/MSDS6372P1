## MSDS 6372 Spring 2019 Project #1
## Linda, Jasmine, Jeff 

# Exploratory Data Analysis

# load packages
library(readr)

#Bring in dataset
d1 <- read_csv("Source/hrdata.csv", col_types = cols(Grade = col_integer()))

#view data
head(d1)
str(d1)


#Model 01
sal01<-lm(Salary ~ Grade + Gender, data = d1)
summary(sal01)

# Standardized parameter estimates
lm.beta(sal01)

# Confidence intervals
confint(sal01)

#Model 02
sal02<-lm(Salary ~ Grade + Gender + Minority, data = d1)
summary(sal02)

# Standardized parameter estimates
lm.beta(sal02)

# Confidence intervals
confint(sal02)


#----To compare the R2 in two models, use the ANOVA command---
anova(sal01, sal02)