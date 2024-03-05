# Read dataset
data = read.csv('dataset14.csv')
mapping = c('Poor' = 0, 'Good' = 1)
data$Qualityclass = mapping[data$Qualityclass]
data$country_of_origin = as.factor(data$country_of_origin)

# Full model 
# Need model selection later
model = glm(data$Qualityclass ~ ., family = binomial(link = "logit"), data = data)
summary(model)

