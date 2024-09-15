# Import Dataset
library(readxl)
class_data <- read_excel("Class.xlsx")
View(class_data)

# a)
library(ggplot2)

# Plot for Gender
ggplot(class_data, aes(x = Gender)) +
  geom_bar(fill = "lightblue") +
  labs(title = "Distribution of Gender", x = "Gender", y = "Count")

# Plot for Ethnicity
ggplot(class_data, aes(x = Ethnicity)) +
  geom_bar(fill = "lightgreen") +
  labs(title = "Distribution of Ethnicity", x = "Ethnicity", y = "Count")

# Plot for Degree Type
ggplot(class_data, aes(x = DegreeType)) +
  geom_bar(fill = "lightcoral") +
  labs(title = "Distribution of Degree Type", x = "Degree Type", y = "Count")

# Plot for Class
ggplot(class_data, aes(x = Class)) +
  geom_bar(fill = "lightpink") +
  labs(title = "Distribution of Class", x = "Class", y = "Count")


# b)
# Proportion of male first-class receivers
male_first_class <- class_data[class_data$Gender == "Male" & class_data$Class == "First", ]
prop_male_first_class <- nrow(male_first_class) / nrow(class_data[class_data$Gender == "Male", ])
prop_male_first_class

# Class distribution for Sinhala graduates
sinhala_graduates <- class_data[class_data$Ethnicity == "Sinhala", ]
ggplot(sinhala_graduates, aes(x = Class)) +
  geom_bar(fill = "lightblue") +
  labs(title = "Class Distribution for Sinhala Graduates", x = "Class", y = "Count")


# c)
# Class distribution based on degree type
ggplot(class_data, aes(x = DegreeType, fill = Class)) +
  geom_bar(position = "fill") +
  labs(title = "Class Distribution by Degree Type", x = "Degree Type", y = "Proportion", fill = "Class")

# d)
# Class distribution for males and females
ggplot(class_data, aes(x = Gender, fill = Class)) +
  geom_bar(position = "fill") +
  labs(title = "Class Distribution by Gender", x = "Gender", y = "Proportion", fill = "Class")


