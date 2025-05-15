# analysis_script.R
# Main analysis pipeline for Social Media and Mental Health dataset

if(!require(tidyverse)) install.packages("tidyverse", repos='http://cran.us.r-project.org')
if(!require(corrplot)) install.packages("corrplot", repos='http://cran.us.r-project.org')
library(tidyverse)
library(corrplot)

if(!dir.exists("results")) dir.create("results")

data_path <- "data/smmh.csv"
data <- read.csv(data_path, stringsAsFactors = FALSE)
cat("Data loaded successfully. Dimensions:", dim(data), "\n")

time_labels <- c("Less than 1 hour", "Between 1 and 2 hours", "Between 2 and 3 hours",
                 "Between 3 and 4 hours", "Between 4 and 5 hours", "More than 5 hours")

data[[7]] <- as.factor(data[[7]]); colnames(data)[7] <- "Use_SM"
colnames(data)[8] <- "Platforms_used"
data$Time_spent_raw <- data[[9]]
data$Time_spent_raw[data$Use_SM == "No"] <- "Not Use SM"
data$Time_spent_raw[is.na(data$Time_spent_raw)] <- "Not Use SM"

full_labels <- c(time_labels, "Not Use SM")
data$Time_spent_label <- factor(data$Time_spent_raw,
    levels = full_labels,
    labels = c("Less than 1h","1-2h","2-3h","3-4h","4-5h","More than 5h","Not Use SM"),
    ordered = FALSE)

data$Time_spent <- as.numeric(factor(ifelse(data$Time_spent_label == "Not Use SM", NA, as.character(data$Time_spent_label)),
    levels = c("Less than 1h","1-2h","2-3h","3-4h","4-5h","More than 5h"),
    ordered = TRUE))

data[[10]] <- as.numeric(data[[10]]); colnames(data)[10] <- "No_purpose_use"
data[[13]] <- as.numeric(data[[13]]); colnames(data)[13] <- "Easily_distracted"
data[[14]] <- as.numeric(data[[14]]); colnames(data)[14] <- "Anxiety_score"
data[[19]] <- as.numeric(data[[19]]); colnames(data)[19] <- "Depression_score"
data[[21]] <- as.numeric(data[[21]]); colnames(data)[21] <- "Sleep_issues"
data[[2]] <- as.numeric(data[[2]]); colnames(data)[2] <- "Age"
data[[3]] <- as.factor(data[[3]]); colnames(data)[3] <- "Gender"
data[[5]] <- as.factor(data[[5]]); colnames(data)[5] <- "Employment_status"

data$High_Depression <- factor(ifelse(data$Depression_score >= 4, "Yes", "No"))

write.csv(head(data), "results/data_preview.csv", row.names = FALSE)

source("src/model_summary.R")
source("src/visualization_functions.R")

cat("Analysis complete. All results saved to results/.\n")
