# Project Notes

## Objective
To identify how social media usage patterns relate to self-reported mental health outcomes, focusing on depression, anxiety, distraction, and sleep issues.

## Data Source
The dataset `smmh.csv` was derived from a public survey on Kaggle. It includes demographic information, social media habits, and psychological self-assessments on a 1–5 scale. Participants reported how often they use social media, how much time they spend daily, and how purposeless their use tends to be.

## Data Preparation
- Removed incomplete responses and standardized categorical fields.
- Re-labeled time spent into ordered factors for analysis and plotting.
- Converted Likert-scale items (1–5) into numeric variables.
- Created a binary outcome `High_Depression` for individuals with depression scores ≥4.

## Methods
Analysis was performed using R (version 4.x).  
Key packages: `tidyverse`, `ggplot2`, and `corrplot`.

1. **Descriptive Statistics:** Summarized all major variables.  
2. **Correlation Analysis:** Explored relationships between time spent, purposeless use, and mental health metrics.  
3. **Regression Modeling:** Estimated the effect of social media behavior while controlling for demographics.  
4. **Visualization:** Created histograms, boxplots, scatterplots, bar charts, and heatmaps to illustrate findings.

## Key Findings
- Time spent and purposeless use both correlate positively with anxiety, distraction, and depression.
- Individuals who spend more than 5 hours online daily report the highest rates of high depression.
- Purposeless use (mindless scrolling) shows the strongest and most consistent effect across all mental health indicators.

## Limitations
- Self-reported data may include bias or measurement error.
- Cross-sectional design limits causal inference.
- The dataset primarily represents younger demographics familiar with social media.

## Files Generated
- Statistical outputs and figures saved to the `/results/` folder.
- Regression models in `regression_summary.txt`.
- Visuals including boxplots, scatterplots, and heatmaps for publication.