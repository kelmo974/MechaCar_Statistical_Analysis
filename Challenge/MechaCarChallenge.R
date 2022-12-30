#import dependencies/libraries
library(dplyr)
library(tidyverse)

# import mpg CSV
car <- read.csv('MechaCar_mpg.csv')
car_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car)
summary(car_mpg)


# import second CSV
coil <- read.csv("Suspension_Coil.csv")
