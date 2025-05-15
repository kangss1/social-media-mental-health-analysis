# Data Dictionary - Social Media and Mental Health Dataset

This document describes the variables contained in `smmh.csv`. The dataset includes responses from 481 participants about social media use and mental health indicators.

| Variable Name | Description | Type | Example Value |
|----------------|-------------|------|----------------|
| id | Unique respondent identifier | integer | 1 |
| Age | Age of the respondent | integer | 23 |
| Gender | Self-identified gender | categorical | Female |
| SocialMediaUsage | Frequency of social media use (hours per day) | numeric | 3 |
| Platform | Main social media platform used | categorical | Instagram |
| TimeSpent | Time spent daily on social media (minutes) | numeric | 180 |
| SleepQuality | Self-rated sleep quality (1=poor, 5=excellent) | numeric | 3 |
| Anxiety | Self-rated anxiety level (1=low, 5=high) | numeric | 4 |
| Depression | Self-rated depression level (1=low, 5=high) | numeric | 3 |
| Distraction | Frequency of being distracted by social media | numeric | 4 |
| Productivity | Self-rated productivity level (1=low, 5=high) | numeric | 2 |
| AcademicPerformance | Reported academic performance | categorical | Average |
| RelationshipImpact | Whether social media affects relationships | categorical | Yes |
| Worry | Degree of worry caused by social media | numeric | 3 |
| HoursSleep | Average hours of sleep per night | numeric | 6 |
| LikesImportance | Importance of likes or online validation | numeric | 4 |
| SelfEsteem | Self-rated self-esteem (1=low, 5=high) | numeric | 3 |
| Loneliness | Self-rated loneliness level (1=low, 5=high) | numeric | 4 |
| MoodChange | Whether mood changes after social media use | categorical | Yes |
| Region | Geographical region of respondent | categorical | North America |
| Device | Main device used for social media | categorical | Smartphone |

## Notes
- The dataset is anonymized and collected from an online survey.
- Numeric responses are scaled from 1 to 5 unless otherwise noted.
- Some categorical variables (e.g., Gender, Platform, Region) may have multiple distinct values.
- Missing values are present in a few columns and should be handled during preprocessing.

