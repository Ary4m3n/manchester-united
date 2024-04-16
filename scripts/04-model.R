#### Preamble ####
# Purpose: Models for the points scored in the eras of 2004-2013 (first_model) and 2014-2023 (second_model)
# Author: Aryaman Sharma
# Date: 12 April 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R and 02-data_cleaning.R before running this file
# Any other information needed?


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(rstanarm)
library(modelsummary)
library(styler)

# Used to style the code
# style_file("scripts/04-model.R")

#### Read data ####
analysis_data2013 <- read_parquet("data/analysis_data/analysis_data2013.parquet")

### Model data ####
first_model <- stan_glm(
  formula = `League Points` ~ `Win Percentage (%)` + `Goals Scored` + `Goal Difference`,
  data = analysis_data2013,
  family = gaussian(),
  prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
  prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
  prior_aux = exponential(rate = 1, autoscale = TRUE),
  seed = 853
)
#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)

#### Read data ####
analysis_data2023 <- read_parquet("data/analysis_data/analysis_data2023.parquet")

### Model data ####
second_model <- stan_glm(
  formula = `League Points` ~ `Win Percentage (%)` + `Goals Scored` + `Goal Difference`,
  data = analysis_data2023,
  family = gaussian(),
  prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
  prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
  prior_aux = exponential(rate = 1, autoscale = TRUE),
  seed = 853
)

#### Save model ####
saveRDS(
  second_model,
  file = "models/second_model.rds"
)


