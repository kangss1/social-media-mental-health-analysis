# Social Media and Mental Health Analysis

**Course:** INFO-I-421 – Applications of Data Mining (3 credit hours)  
**Department:** Human-Centered Computing  
**School:** Indiana University School of Informatics and Computing, Indianapolis  
**Semester:** Spring 2025  
**Date:** May 2025 
**Instructor:** Ashley Miller (M.S. Data Science, B.S. Marketing)  
**Team Leader:** Sandeep Kang  
**Team Members:** Patricia Esparza, Alexander Pitchford, Yamlak Bogale  

---

## Overview

This project examines how social media usage patterns—specifically **time spent** and **purposeless use**—affect mental health outcomes such as **depression**, **anxiety**, **sleep disturbance**, and **distraction**.  

Using a survey dataset sourced from Kaggle, we applied statistical analysis and visualization in R to identify patterns linking online behavior to self-reported psychological well-being. Results indicate that **purposeless social media use** is a stronger predictor of negative mental health outcomes than time spent alone, highlighting how *quality of engagement* matters as much as *quantity of use*.

This repository contains all scripts, data, visualizations, results, and documentation required to reproduce the full analysis and report.

---

## Repository Structure

```
social-media-mental-health-analysis/
│
├── README.md
│
├── data/
│   ├── smmh.csv                     # Dataset from Kaggle
│   └── data_dictionary.md           # Variable definitions and scales
│
├── src/
│   ├── analysis_script.R            # Cleans data and runs statistical analysis
│   ├── visualization_functions.R    # Generates all charts and heatmaps
│   └── model_summary.R              # Regression models and test summaries
│
├── notebooks/
│   └── SocialMedia_MentalHealth_Report.Rmd  # Annotated R Markdown notebook
│
├── results/
│   ├── correlation_matrix.txt          # Text output of correlation coefficients
│   ├── regression_summary.txt          # Regression model summary
│   ├── regression_summary_adjusted.txt # Extended or demographic-adjusted regression results
│   ├── data_preview.csv                # Preview snapshot of cleaned/processed data used in analysis
│
│   ├── boxplot_depression_time.png     # Depression vs. time spent (boxplot)
│   ├── boxplot_anxiety_time.png        # Anxiety vs. time spent (boxplot)
│   ├── histogram_depression.png        # Distribution of depression scores
│   ├── histogram_time_spent.png        # Distribution of time spent on social media
│   ├── scatter_anxiety_time.png        # Scatterplot: Time spent vs. anxiety
│   ├── scatter_depression_time.png     # Scatterplot: Time spent vs. depression
│   ├── bar_high_depression.png         # Bar chart of high depression rate by time category
│   └── correlation_heatmap.png         # Heatmap of social media use vs. mental health correlations
│
├── presentation/
│   └── I421-Final-Presentation.mp4   # Recorded presentation video
│
├── report/
│   ├── INFOI421_Final_Report.docx    # Editable project report
│   └── INFOI421_Final_Report.pdf     # Final official submission
│
└── docs/
    ├── abstract.md
    ├── project_notes.md
    ├── references.md
    └── acknowledgments.md
```

---

## Dataset Information

**Source:** Kaggle – *Social Media and Mental Health Survey Dataset*  
**Author:** Souvik Ahmed (with contributions from Muhesena Nasiha Syeda)  
**Link:** https://www.kaggle.com/datasets/souvikahmed071/social-media-and-mental-health

**Overview:**  
The dataset contains **481 survey responses** from participants in Dhaka, Bangladesh, examining patterns of social media engagement and their psychological effects. Each entry includes demographic data, platform usage, time spent, purposeless use frequency, and mental health indicators measured on a **1–5 Likert scale**.

---

## Methods

### Data Preparation
- Cleaned and standardized variable names.  
- Encoded categorical variables as factors for R modeling.  
- Re-labeled time spent categories (e.g., “1–2h”, “More than 5h”, “Not Use SM”).  
- Converted Likert-scale responses to numeric values.  
- Created a binary variable `High_Depression` for individuals with depression ≥ 4.

### Analysis Steps
1. **Exploratory Data Analysis (EDA)**  
2. **Regression Models**  
3. **Visualizations**  
4. **Interpretation**  

---

## Key Findings

- **Positive correlation** between time spent and depression/anxiety (r ≈ 0.24).  
- **Stronger correlation** between purposeless use and mental health distress (r ≈ 0.32–0.36).  
- **Purposeless use** is a consistent predictor of distraction and depression (p < 0.001).  
- **High depression rate** increases steadily with more time spent, from ~26% to >60%.  
- Visualizations confirm all regression results, reinforcing the statistical findings.  

---

## Reproduction Guide

### 1. Setup Environment

```r
install.packages(c("tidyverse", "ggplot2", "corrplot"))
```

### 2. Clone the Repository

```bash
git clone https://github.com/your-username/social-media-mental-health-analysis.git
cd social-media-mental-health-analysis
```

### 3. Run Main Analysis

```bash
Rscript src/analysis_script.R
```

### 4. Generate Visuals Only

```bash
Rscript src/visualization_functions.R
```

### 5. View the Final Report
```
report/INFOI421_Final_Report.pdf
```

---

## Presentation

🎥 **Final Presentation Video**  
presentation/I421-Final-Presentation.mp4

---

## Citation and Credits

**Dataset:** Ahmed, S. (2023). *Social Media and Mental Health Dataset*. Kaggle.  
**Analysis Tools:** R (tidyverse, ggplot2, corrplot).  
**Course:** INFO-I-421 – Applications of Data Mining, Indiana University, Spring 2025.  
**Instructor:** Ashley Miller, M.S. Data Science, B.S. Marketing.  

---

## Acknowledgments

Special thanks to:
- **Ashley Miller**, for guidance and academic feedback.  
- The **Kaggle open data community**, for making this dataset available.  
- Team collaborators for their contributions in analysis, visualization, and writing.  

All contributors share equal authorship credit.
