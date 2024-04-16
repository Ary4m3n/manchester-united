#### Preamble ####
# Purpose: Tests the analysis data
# Author: Aryaman Sharma
# Date: 12 April 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R and 02-data_cleaning.R before running this
# Any other information needed? Run 00-simulate_data.R to get a sense of how the data looks

#### Workspace setup ####
library(tidyverse)
library(styler)

#### Test data ####
# Used to style the code
# style_file("scripts/03-test_data.R")

# Here I will only test one data table because the other one is the same, just 
# with a different set of years i.e. 2014-2023
analysis_data2013 <- read_parquet("data/analysis_data/analysis_data2013.parquet")

# First test is to check if the years start from 2004
analysis_data2013$Year |> 
  min() == 2004

# Second test is to check if the years do not exceed 2013
analysis_data2013$Year |>
  max() == 2013

# Third test is to check if the years lie between 2004-2013 i.e. 10 years
analysis_data2013$Year |>
  unique() |>
  length() == 10

# Fourth test is to check if the Year column is numeric
analysis_data2013$Year |>
  class() == "numeric"

# Fifth test is to check if the Rank column is between 1 and 20
analysis_data2013$Rank |>
  min() >= 1

# Sixth test is to check if the Rank column is between 1 and 20
analysis_data2013$Rank |>
  max() <= 20

# Seventh test is to check if the Rank column is numeric
analysis_data2013$Rank |>
  class() == "numeric"

# Eighth test is to check if Wins column is non-negative
analysis_data2013$Wins |>
  min() >= 0

# Ninth test is to check if wins are not more than 38, i.e. the number of matches
analysis_data2013$Wins |>
  max() <= 38

# Tenth test is to check if the Wins column is numeric
analysis_data2013$Wins |>
  class() == "numeric"

# Eleventh test is to check if Draws column is non-negative
analysis_data2013$Draws |>
  min() >= 0

# Twelfth test is to check if draws are not more than 38, i.e. the number of matches
analysis_data2013$Draws |>
  max() <= 38

# Thirteenth test is to check if the Draws column is numeric
analysis_data2013$Draws |>
  class() == "numeric"

# Fourteenth test is to check if Losses column is non-negative
analysis_data2013$Losses |>
  min() >= 0

# Fifteenth test is to check if losses are not more than 38, i.e. the number of matches
analysis_data2013$Losses |>
  max() <= 38

# Sixteenth test is to check if the Losses column is numeric
analysis_data2013$Losses |>
  class() == "numeric"

# Seventeenth test is to check if the Win Ratio is non-negative
analysis_data2013$`Win Ratio` |>
  min() >= 0

# Eighteenth test is to check if the Win Ratio is numeric
analysis_data2013$`Win Ratio` |>
  class() == "numeric"

# Nineteenth test is to check if the Goals Scored are non-negative
analysis_data2013$`Goals Scored` |>
  min() >= 0

# Twentieth test is to check if the Goals Scored column is numeric
analysis_data2013$`Goals Scored` |>
  class() == "numeric"

# Twenty-first test is to check if the Goals Conceded are non-negative
analysis_data2013$`Goals Conceded` |>
  min() >= 0

# Twenty-second test is to check if the Goals Conceded column is numeric
analysis_data2013$`Goals Conceded` |>
  class() == "numeric"

# Twenty-third test is to check if the Goal Difference column is numeric
analysis_data2013$`Goal Difference` |>
  class() == "numeric"

# Twenty-fourth test is to check if the League Points are non-negative
analysis_data2013$`League Points` |>
  min() >= 0

# Twenty-fifth test is to check if the League Points column is numeric
analysis_data2013$`League Points` |>
  class() == "numeric"


