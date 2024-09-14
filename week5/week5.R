# Exercise 1: Airquality Data Analysis

# Load the airquality dataset
data(airquality)

# a)
summary_data <- summary(airquality, na.rm = TRUE)
summary_data

# b)
par(mfrow=c(2, 2))
hist(airquality$Ozone, main = "Ozone", xlab = "Ozone Levels", col = "blue", breaks = 10)
hist(airquality$Wind, main = "Wind", xlab = "Wind Speed", col = "red", breaks = 10)
hist(airquality$Temp, main = "Temperature", xlab = "Temperature", col = "green", breaks = 10)
hist(airquality$Solar.R, main = "Solar Radiation", xlab = "Solar Radiation", col = "yellow", breaks = 10)

# c) 
x <- airquality$Temp
hist(x, freq = FALSE, main = "Normal Curve for Temperature", xlab = "Temperature", col = "green")
curve(dnorm(x, mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)), add = TRUE, col = "blue", lwd = 2)

####################################################################################################################

# Exercise 2: Scatter Plot Matrix for the Iris Dataset

# Load the iris dataset
data(iris)

pairs(~Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris, main = "Scatterplot Matrix for Iris Data")

####################################################################################################################

# Exercise 3: Cats Data Analysis

# Load the cats dataset
library(MASS)
data(cats)

# a)
plot(cats$Bwt, cats$Hwt, main = "Scatterplot of Body Weight vs Heart Weight", xlab = "Body Weight (kg)", ylab = "Heart Weight (g)", col = "blue", pch = 19)

# b) 
model <- lm(Hwt ~ Bwt, data = cats)
summary(model)
abline(model, col = "red")

# c) 
rsquared <- summary(model)$r.squared
rsquared

# d) 
anova(model)

# e) 
new_data <- data.frame(Bwt = 2.52)
predicted_Hwt <- predict(model, newdata = new_data)
predicted_Hwt






  