#import dependencies/libraries
library(dplyr)
library(tidyverse)

# import mpg CSV
car <- read.csv('MechaCar_mpg.csv')
car_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car)
summary(car_mpg)


# import second CSV
coil <- read.csv("Suspension_Coil.csv")


# perform summary analysis on suspension csv
total_summary <- coil %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), standard_deviation = sd(PSI))
# similar summary analysis, but by lot grouping
lot_summary <- coil %>%  group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), standard_deviation = sd(PSI))


# perform t.test on suspension coils 
t.test(coil$PSI, mu = 1500, alternative = "two.sided")


# perform t.tests on three different lot # categories/groups
t.test(subset(coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500, alternative = "two.sided")
t.test(subset(coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500, alternative = "two.sided")
t.test(subset(coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500, alternative = "two.sided")