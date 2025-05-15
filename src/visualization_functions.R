# visualization_functions.R
library(ggplot2)
library(dplyr)
library(corrplot)

p1 <- ggplot(data %>% filter(!is.na(Time_spent_label)),
             aes(x=Time_spent_label, y=Depression_score)) +
  geom_boxplot(fill="lightblue") +
  labs(title="Depression Score by Time Spent on Social Media",
       x="Time Spent Category", y="Depression Score") +
  theme(axis.text.x=element_text(angle=45,hjust=1))
ggsave("results/boxplot_depression_time.png", plot=p1, width=7, height=5)

p2 <- ggplot(data %>% filter(!is.na(Time_spent_label)),
             aes(x=Time_spent_label, y=Anxiety_score)) +
  geom_boxplot(fill="lightgreen") +
  labs(title="Anxiety Score by Time Spent on Social Media",
       x="Time Spent Category", y="Anxiety Score") +
  theme(axis.text.x=element_text(angle=45,hjust=1))
ggsave("results/boxplot_anxiety_time.png", plot=p2, width=7, height=5)

p3 <- ggplot(data, aes(x=Depression_score)) +
  geom_histogram(binwidth=1, fill="steelblue", color="black") +
  labs(title="Distribution of Depression Scores")
ggsave("results/histogram_depression.png", plot=p3, width=7, height=5)

p4 <- ggplot(data, aes(x=Time_spent)) +
  geom_histogram(binwidth=1, fill="orange", color="black") +
  labs(title="Distribution of Time Spent on Social Media")
ggsave("results/histogram_time_spent.png", plot=p4, width=7, height=5)

p5 <- ggplot(data, aes(x=Time_spent, y=Anxiety_score)) +
  geom_jitter(alpha=0.4) +
  geom_smooth(method="lm", color="red") +
  labs(title="Time Spent vs Anxiety Score")
ggsave("results/scatter_anxiety_time.png", plot=p5, width=7, height=5)

p6 <- ggplot(data, aes(x=Time_spent, y=Depression_score)) +
  geom_jitter(alpha=0.4) +
  geom_smooth(method="lm", color="blue") +
  labs(title="Time Spent vs Depression Score")
ggsave("results/scatter_depression_time.png", plot=p6, width=7, height=5)

p7 <- data %>%
  filter(!is.na(Time_spent)) %>%
  group_by(Time_spent_label) %>%
  summarise(High_Depression_Rate = mean(High_Depression == "Yes")) %>%
  ggplot(aes(x=Time_spent_label, y=High_Depression_Rate)) +
  geom_col(fill="darkred") +
  labs(title="Rate of High Depression by Time Spent",
       x="Time Spent Category", y="Proportion with High Depression") +
  theme(axis.text.x=element_text(angle=45,hjust=1))
ggsave("results/bar_high_depression.png", plot=p7, width=7, height=5)

iv_dv_data <- data[, c("Time_spent","No_purpose_use","Depression_score","Anxiety_score","Easily_distracted","Sleep_issues")]
cor_matrix_iv_dv <- cor(iv_dv_data, use="complete.obs")
cor_subset <- cor_matrix_iv_dv[c("Time_spent","No_purpose_use"), c("Depression_score","Anxiety_score","Easily_distracted","Sleep_issues")]
png("results/correlation_heatmap.png", width=700, height=600)
corrplot(cor_subset, method="color", addCoef.col="black", tl.col="black", cl.cex=0.8,
         title="Correlation: Social Media Use vs Mental Health", mar=c(0,0,2,0))
dev.off()
