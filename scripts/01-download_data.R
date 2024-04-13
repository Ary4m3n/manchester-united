#### Preamble ####
# Purpose: Downloads and saves the data from `worldfootballR`.
# Author: Aryaman Sharma
# Date: 12 April 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: Uncomment line number 12 and run it once to install `worldfootballR`.
# Any other information needed? The loop takes some time to run, so please wait for some time after running this file.

#### Workspace setup ####

# install.packages("worldfootballR")
library(worldfootballR)
library(tidyverse)

#### Download data ####

# We run this in a loop to obtain raw data for the league table for a span of 20
# years, i.e. 2004-2023.
for (year in 2004:2023) {
  league_table <- fb_season_team_stats("ENG", "M", year, "1st", "league_table")

  league_table_file_name <- paste0("data/raw_data/league_table_stats_", year, ".csv")
  #### Save data ####
  write_csv(league_table, league_table_file_name)
}

         
