# model_summary.R
library(tidyverse)

iv_dv_data <- data[, c("Time_spent","No_purpose_use","Depression_score","Anxiety_score","Easily_distracted","Sleep_issues")]
cor_matrix <- cor(iv_dv_data, use="complete.obs")
write.table(round(cor_matrix,3), "results/correlation_matrix.txt", sep="\t")

models <- list(
  Depression = lm(Depression_score ~ Time_spent + No_purpose_use, data=data),
  Anxiety = lm(Anxiety_score ~ Time_spent + No_purpose_use, data=data),
  Distraction = lm(Easily_distracted ~ Time_spent + No_purpose_use, data=data),
  Sleep = lm(Sleep_issues ~ Time_spent + No_purpose_use, data=data)
)

models2 <- list(
  Depression = lm(Depression_score ~ Time_spent + No_purpose_use + Age + Gender + Employment_status, data=data),
  Anxiety = lm(Anxiety_score ~ Time_spent + No_purpose_use + Age + Gender + Employment_status, data=data),
  Distraction = lm(Easily_distracted ~ Time_spent + No_purpose_use + Age + Gender + Employment_status, data=data),
  Sleep = lm(Sleep_issues ~ Time_spent + No_purpose_use + Age + Gender + Employment_status, data=data)
)

sink("results/regression_summary.txt")
for(name in names(models)) {
  cat("\nModel:", name, "\n")
  print(summary(models[[name]]))
}
sink()

sink("results/regression_summary_adjusted.txt")
for(name in names(models2)) {
  cat("\nAdjusted Model:", name, "\n")
  print(summary(models2[[name]]))
}
sink()
