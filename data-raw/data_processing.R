# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(readxl)
library(openxlsx)

# Read data --------------------------------------------------------------------
# data_in <- readr::read_csv("data-raw/dataset.csv")

# codebook <- readxl::read_excel("data-raw/codebook.xlsx") |>
#  clean_names()
data_in <- read_excel("data-raw/Data Workshop_Lars_Nov2024.xlsx")
# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here


# Export Data ------------------------------------------------------------------
usethis::use_data(project, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(project,
                 here::here("inst", "extdata", paste0("project", ".csv")))
openxlsx::write.xlsx(project,
                     here::here("inst", "extdata", paste0("project", ".xlsx")))


