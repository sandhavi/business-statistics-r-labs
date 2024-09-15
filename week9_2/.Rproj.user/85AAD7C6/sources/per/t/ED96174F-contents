# Q1: Analysis of the Rock Dataset

# a)
# Load the rock dataset
data(rock)
head(rock)


# b)
summary(rock)

library(dplyr)
rock_summary <- rock %>%
  summarise(across(everything(), list(mean = ~mean(.), sd = ~sd(.))))
rock_summary

# c) 
# 95% confidence interval for the area
area_ci <- t.test(rock$area)$conf.int
area_ci

# d)
# One-sample t-test to test the claim
t_test_area <- t.test(rock$area, mu = 7000, alternative = "greater")
t_test_area


# Q2 

# Given data for the daily word counts of 20 men
word_counts <- c(28408, 10084, 15931, 21688, 37786, 10575, 12880, 11071, 17799, 13182, 
                 8918, 6495, 8153, 7015, 4429, 10054, 3998, 12639, 10974, 5255)

# a) Examine the data
# Summary statistics for the word count
summary(word_counts)

# b) Hypothesis test to check if mean word count differs from 7000
t_test_result <- t.test(word_counts, mu = 7000, alternative = "two.sided")
t_test_result




