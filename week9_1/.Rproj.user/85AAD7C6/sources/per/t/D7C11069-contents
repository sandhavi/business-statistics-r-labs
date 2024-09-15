install.packages("ggplot2")
library(ggplot2)

birthweight <- read.csv("BIRTHWEIGHT.csv")

head(birthweight)
summary(birthweight)

# Convert necessary columns to factors
birthweight$LOW <- factor(birthweight$LOW, labels = c("No", "Yes"))
birthweight$RACE <- factor(birthweight$RACE, labels = c("White", "Black", "Other"))
birthweight$SMOKE <- factor(birthweight$SMOKE, labels = c("No", "Yes"))
birthweight$HT <- factor(birthweight$HT, labels = c("No", "Yes"))
birthweight$UI <- factor(birthweight$UI, labels = c("No", "Yes"))

# 1. Univariate analysis

# a) Bar plot for LOW (Low Birth Weight)
ggplot(birthweight, aes(x = LOW)) +
  geom_bar(fill = "lightblue", color = "blue") +
  labs(title = "Distribution of Low Birth Weight", x = "Low Birth Weight", y = "Count")

# b) Histogram for AGE (Age of the Mother)
ggplot(birthweight, aes(x = AGE)) +
  geom_histogram(fill = "orange", color = "black", bins = 10) +
  labs(title = "Histogram of Mother's Age", x = "Age", y = "Frequency")

# c) Histogram for LWT (Weight at Last Menstrual Period)
ggplot(birthweight, aes(x = LWT)) +
  geom_histogram(fill = "purple", color = "black", bins = 10) +
  labs(title = "Histogram of Mother's Weight (LWT)", x = "Weight (LWT)", y = "Frequency")

# 2. Bivariate analysis

# a) Box plot of Birth Weight (BWT) by Race
ggplot(birthweight, aes(x = RACE, y = BWT, fill = RACE)) +
  geom_boxplot() +
  labs(title = "Boxplot of Birth Weight by Race", x = "Race", y = "Birth Weight (BWT)")

# b) Scatter plot of Birth Weight (BWT) against Mother's Weight (LWT)
ggplot(birthweight, aes(x = LWT, y = BWT)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of Birth Weight vs Mother's Weight", 
       x = "Mother's Weight (LWT)", y = "Birth Weight (BWT)")

# c) Scatter plot of Birth Weight against Age, colored by Smoking Status
ggplot(birthweight, aes(x = AGE, y = BWT, color = SMOKE)) +
  geom_point(size = 3, alpha = 0.6) +
  labs(title = "Scatter Plot of Birth Weight vs Age (Colored by Smoking Status)", 
       x = "Age", y = "Birth Weight (BWT)")

# d) Box plot of Birth Weight by History of Hypertension
ggplot(birthweight, aes(x = HT, y = BWT, fill = HT)) +
  geom_boxplot() +
  labs(title = "Boxplot of Birth Weight by History of Hypertension", 
       x = "Hypertension History", y = "Birth Weight (BWT)")
