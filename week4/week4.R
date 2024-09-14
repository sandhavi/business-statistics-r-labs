# Exercise 01
p_value <- 1 - pnorm(1000, mean = 1010, sd = 218)
p_value

# Exercise 02
first_quartile <- qnorm(0.25, mean = 1010, sd = 218)
median_y <- qnorm(0.5, mean = 1010, sd = 218)
first_quartile
median_y

# Exercise 03
random_values <- rnorm(100, mean = 50, sd = 10)
hist(random_values, main = "Histogram of 100 Random Normal Values (Mean = 50, SD = 10)", xlab = "Values", col = "blue")
