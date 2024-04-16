# Analysis of Sir Alex Ferguson's Predicted Performance over Continued Career

## Overview

This repo provides all the work and files used and created while writing the paper titled **"Sir Alex Ferguson’s Continued Tenure Could Have Only Marginal Improvements over Manchester United’s EPL Performance"**. To access the PDF of the paper you can find it in the `paper` directory where it is named as `paper.pdf`. The File Structure Section outlines each directory and also all relevant material that they contain. Please go through the File Structure Section before accessing the repo to gain all the understanding needed.

To use this folder, click the green "Code" button", then "Download ZIP". The user can then move the folder around to wherever they want to work on it on their own computer.

The repo has been created in a reproducible way for as to allow users to access and reproduce the work easily. Happy Reading!

## LLM Usage

Chat-GPT4 was used as an LLM for this paper where the usage was restricted to learning some features of Quarto and R, and was restricted to only be used for the coding aspect. All the usages have been included in `other/llm/usage.txt` for reference, with the full chat with the LLM.

## File Structure

The repo has been structured in a way to make it accessible to the user. The repo is structured as:

-   `data/raw_data` contains the raw data obtained from the R package `worldfootballR` after running `scripts/01-download_data.R`.
-   `data/analysis_data` contains the cleaned data after running script `02-data_cleaning.R`.
-   `models/first_model.rds` and `models/second_model.rds` contains the saved models after running `04-model.R`.
-   `other/llm` contains the file `usage.txt` that includes the chat with the LLM as reference.
-   `other/sketches` contains two sketches for the datasets `datasets.pdf` and the graphs `graphs.pdf` as reference to what is to be expected in the paper.
-   `paper` contains the files used to generate the paper, including the Quarto document, `paper.qmd`, the reference bibliography file, `references.bib` as well as the PDF of the paper, `paper.pdf`.
-   `scripts` contains the R scripts used to simulate `00-simulate_data.R`, download `01-download_data.R`, clean `02-data_cleaning.R`, test `03-test_data.R` and model the data `04-model.R`. Kindly read the prerequisites in the R scripts' preamble to be able to reuse and run the code.
