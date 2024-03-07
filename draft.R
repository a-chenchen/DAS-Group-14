library(tidyverse)
library(moderndive)
library(gapminder)
library(sjPlot)
library(stats)
library(jtools)
library(dplyr)
library(knitr)
library(janitor)
library(MASS)
library(sjPlot)



#data wrangling and subseting
data = read.csv('dataset14.csv')
data <- na.omit(data)
mapping = c('Poor' = 0, 'Good' = 1)
data$Qualityclass = mapping[data$Qualityclass]

full_model = glm(formula = data$Qualityclass ~ . , family = binomial(link = 'logit'),data = data)
summary(full_model)

new.origin1 = ifelse(data$country_of_origin %in% c('India', 'Colombia', 'Thailand'), data$country_of_origin, 'aother')
new.origin1

newdata1 = cbind(new.origin1, data[,-1])
full_model1 = glm(formula = Qualityclass ~ . , family = binomial(link = 'logit'), data = newdata1)
summary(full_model1)

stepAIC(full_model1)

