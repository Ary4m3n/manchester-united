#### Preamble ####
# Purpose: Simulates the data tables generated from 02-data_cleaning.R
# Author: Aryaman Sharma
# Date: 12 April 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Simulate data ####
# We set the seed here to help make this script reproducible
set.seed(853)

# This is the simulated data for the seasons under Sir Alex Ferguson (2004-2013).
simulated_analysis_data2013 <- 
  tibble(
    "Year" = 2004:2013,
    "Rank" = sample(1:20, size = 10, replace = TRUE),
    "Wins" = sample(0:19, size = 10, replace = TRUE), # The logic behind all 3 of Wins, Draws and Losses is that total number of games is 38
    "Draws" = sample(0:19, size = 10, replace = TRUE),
    "Losses" = as.integer(38 - (Wins + Draws)),
    "Win Ratio" = runif(n = 10, min = 50, max = 80),
    "Goals Scored" = sample(50:90, size = 10, replace = TRUE),
    "Goals Conceded" = sample(20:45, size = 10, replace = TRUE),
    "Goal Difference" = as.integer(`Goals Scored` - `Goals Conceded`),
    "League Points" = sample(70:90, size = 10, replace = TRUE)
  )

# This is the simulated data for the seasons since Sir Alex Ferguson's era till date (2014-2023)
simulated_analysis_data2023 <- 
  tibble(
    "Year" = 2014:2023,
    "Rank" = sample(1:20, size = 10, replace = TRUE),
    "Wins" = sample(0:19, size = 10, replace = TRUE), # The logic behind all 3 of Wins, Draws and Losses is that total number of games is 38
    "Draws" = sample(0:19, size = 10, replace = TRUE),
    "Losses" = as.integer(38 - (Wins + Draws)),
    "Win Ratio" = runif(n = 10, min = 30, max = 60),
    "Goals Scored" = sample(30:75, size = 10, replace = TRUE),
    "Goals Conceded" = sample(30:55, size = 10, replace = TRUE),
    "Goal Difference" = as.integer(`Goals Scored` - `Goals Conceded`),
    "League Points" = sample(40:80, size = 10, replace = TRUE)
  )




