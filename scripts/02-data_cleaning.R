#### Preamble ####
# Purpose: Cleans the raw data from 2004-2023 for the English Premier League
# Author: Aryaman Sharma
# Date: 12 April 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data before running this file.
# Any other information needed?

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(arrow)
library(styler)

#### Clean data ####
# Used to style the code
# style_file("scripts/02-data_cleaning.R")

final_data_2013 <- list()

for (year in 2004:2013) {
  league_table_file_name <- paste0("data/raw_data/league_table_stats_", year, ".csv")

  temp_league_table_stats <- read_csv(league_table_file_name, show_col_types = FALSE)

  selected_temp_league_table_stats <- temp_league_table_stats |>
    filter(Squad == "Manchester Utd") |>
    select(Season_End_Year, Rk, W, D, L, GF, GA, GD, Pts) |>
    mutate(W_Ratio = ((W) / (W + D + L)) * 100) |>
    select(Season_End_Year, Rk, W, D, L, W_Ratio, GF, GA, GD, Pts) |>
    rename(
      Year = Season_End_Year,
      Rank = Rk,
      Wins = W,
      Draws = D,
      Losses = L,
      `Win Percentage (%)` = W_Ratio,
      `Goals Scored` = GF,
      `Goals Conceded` = GA,
      `Goal Difference` = GD,
      `League Points` = Pts
    )
  final_data_2013[[as.character(year)]] <- selected_temp_league_table_stats
}
#### Save data ####
final_data_2013 <- bind_rows(final_data_2013)
write_parquet(final_data_2013, "data/analysis_data/analysis_data2013.parquet")


final_data_2023 <- list()

for (year in 2014:2023) {
  league_table_file_name <- paste0("data/raw_data/league_table_stats_", year, ".csv")

  temp_league_table_stats <- read_csv(league_table_file_name, show_col_types = FALSE)

  selected_temp_league_table_stats <- temp_league_table_stats |>
    filter(Squad == "Manchester Utd") |>
    select(Season_End_Year, Rk, W, D, L, GF, GA, GD, Pts) |>
    mutate(W_Ratio = ((W) / (W + D + L)) * 100) |>
    select(Season_End_Year, Rk, W, D, L, W_Ratio, GF, GA, GD, Pts) |>
    rename(
      Year = Season_End_Year,
      Rank = Rk,
      Wins = W,
      Draws = D,
      Losses = L,
      `Win Percentage (%)` = W_Ratio,
      `Goals Scored` = GF,
      `Goals Conceded` = GA,
      `Goal Difference` = GD,
      `League Points` = Pts
    )

  final_data_2023[[as.character(year)]] <- selected_temp_league_table_stats
}
#### Save data ####
final_data_2023 <- bind_rows(final_data_2023)
write_parquet(final_data_2023, "data/analysis_data/analysis_data2023.parquet")
