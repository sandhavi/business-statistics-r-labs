# Load the dataset
birthweight <- read.csv("BIRTHWEIGHT.csv")

# Q1
num_individuals <- nrow(birthweight)
num_individuals

# Q2
quant_vars <- names(birthweight)[sapply(birthweight, is.numeric)]
quant_vars

# Q3
library(ggplot2)
ggplot(birthweight, aes(x = factor(LOW))) +
  geom_bar() +
  xlab("Low Birth Weight") +
  ylab("Count") +
  ggtitle("Bar Chart for LOW")

# Q4
race_count <- table(birthweight$RACE)
pie(race_count, labels = paste(names(race_count), round(100 * race_count / sum(race_count), 1), "%"))
white_percent <- race_count["1"] / sum(race_count) * 100
white_percent

# Q5
stem(birthweight$AGE)

# Q6
oldest_mother <- max(birthweight$AGE)
oldest_mother

# Q8
ggplot(birthweight, aes(x = AGE)) +
  geom_histogram(binwidth = 5) +
  ggtitle("Histogram of AGE") +
  xlab("Age of the Mother") +
  ylab("Frequency")

# Q12
ggplot(birthweight, aes(x = factor(RACE), y = LWT)) +
  geom_boxplot() +
  xlab("Race") +
  ylab("LWT") +
  ggtitle("Boxplot of LWT by Race")

# Q13 
mean_lwt <- mean(birthweight$LWT, na.rm = TRUE)
median_lwt <- median(birthweight$LWT, na.rm = TRUE)
mean_lwt
median_lwt

# Histogram
ggplot(birthweight, aes(x = LWT)) +
  geom_histogram(binwidth = 10) +
  ggtitle("Histogram of LWT") +
  xlab("LWT") +
  ylab("Frequency")

