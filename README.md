# Gym-Congestion-Analysis
Beginner SQL project analyzing gym congestion patterns across different times of the day.

This project was made to combine my interests in fitness and systematic thinking. The goal was to identify peak and low congestion periods in the gym, determine what days are most optimal, and strategies for improving scheduling efficiency.

Over a two-week period I collected observational data during three time blocks:
- Morning
- Noon
- Evening

I then stored the data in a SQL Database and used clauses such as SELECT, FROM, WHERE, SUM, MAX, MIN, and ORDER BY to make key findings and patterns. After, I put my congestion data into an excel sheet to make a bar graph for each time slot.

Data Set Structure:
- ID = Primary Key
- day_of_the_week = A full week of data was collected
- time_block = Morning, Noon, Evening
- busyness = levels of congestion ranging from low (not very busy, no wait times for machines) to high (very busy, wait times increased)
- date = Date of findings

Analysis Questions:
-	When is the gym most congested?
-	Which days experience the most congestion?
-	What times consistently have low congestion?
-	What are acceptable training windows (Low or Medium congestion)?
-	How often does each congestion level occur?

Key findings:
-	Evening time blocks had the highest congestion levels.
-	Noon was consistently the least congested time block.
-	Morning periods showed low to moderate congestion.
-	Weekdays tended to be busier than weekends.
-	High congestion occurred exclusively during evening observations in the dataset.
-	Medium and low congestion periods were significantly more common than high congestion periods.
-	Multiple acceptable training windows exist for gym-goers who want to avoid crowds.

Queries used to answer these questions are found in the query.sql file | Queries used to make the dataset are found in the table.sql file

Tools used:
- SQL, Excel
