# California Traffic Collision Analysis

This project aims to analyze traffic collisions in California, focusing on accidents involving alcohol use, lack of attention (such as cell phone usage), and the times and days these accidents most commonly occur. The dataset is provided by the **California Highway Patrol** and includes collision data from the **Statewide Integrated Traffic Records System (SWITRS)** for the year 2019.

## Project Overview

The analysis supports a journalistic report on traffic collisions by examining data trends related to specific causes, such as alcohol involvement or distracted driving. It also investigates patterns in accident occurrences based on time and day of the week.

### Data Sources

The data used in this project comes from two tables:
- **Collisions Table**: Contains collision-level information, such as the time, day of the week, and number of parties involved.
- **Parties Table**: Contains party-specific data for each collision, including fault, sobriety, and other contributing factors.

The tables are linked by the `case_id` column.

## Tasks Breakdown

### Task 1: Analyze Alcohol Use and Lack of Attention in Collisions

- **Objective**: Understand how often alcohol use or inattention (e.g., cell phone usage) is a contributing factor in traffic collisions.
- **Steps**:
  1. Query the number of parties found at fault in all collisions.
  2. Modify the query to filter for parties found at fault under the influence of alcohol.
  3. Add an additional filter to identify parties found at fault due to inattention (e.g., cell phone usage).

### Task 2: Analyze Accident Patterns by Day of the Week

- **Objective**: Determine whether certain days of the week show a higher incidence of accidents caused by alcohol or lack of attention.
- **Steps**:
  1. Query the number of collisions grouped by day of the week.
  2. Join the collisions and parties tables and analyze the data to find how alcohol and inattention-related collisions vary across the week.
  3. Filter the data by `at_fault` and `party_sobriety` to identify collisions caused by alcohol.
  4. Filter for inattention-related accidents to identify patterns.

### Task 3: Analyze Accident Patterns by Time of Day

- **Objective**: Explore how accident occurrences change depending on the time of day, and how these patterns differ for alcohol-related and inattention-related accidents.
- **Steps**:
  1. Create a line graph in Tableau showing the distribution of accidents by hour of the day.
  2. Filter the chart to show only accidents where alcohol was a factor.
  3. Add a filter for inattention-related accidents and compare the distributions.

### Task 4 : Analyze Cell Phone Distraction as a Factor

- **Objective**: Identify the proportion of accidents caused by cell phone usage among all inattention-related accidents.
- **Steps**:
  1. Use the `sp_info_2` column in the parties table to determine which accidents involved a cell phone.
  2. Compare the number of accidents caused by cell phone usage with other inattention-related accidents.

## Tools and Technologies

- **SQL**: Used for querying and joining tables in the SWITRS dataset.
- **Tableau**: Utilized for data visualization, specifically for time-of-day analysis.
- **Google Sheets/Docs**: For compiling the milestone tasks and answers.

## How to Run

1. Load the SWITRS dataset (collisions and parties tables) into your SQL environment.
2. Follow the SQL queries provided in the `queries` directory for each task.
3. Use Tableau for the visualizations described in Task 3.
