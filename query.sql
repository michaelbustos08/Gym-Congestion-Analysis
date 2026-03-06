/* =====================================================
   DATASET OVERVIEW
===================================================== */

/* Total observations collected */

SELECT COUNT(*)
FROM Gym_Busyness;

/* First and last day of data collection */

SELECT 
MIN (date) AS "First_day",
MAX (date) AS "Last_day"
FROM Gym_Busyness;

/* =====================================================
   CONGESTION IDENTIFICATION
===================================================== */

/* Low congestion observations */

SELECT *
FROM Gym_Busyness
WHERE busyness = "Low";

/* High congestion observations */

SELECT *
FROM Gym_Busyness
WHERE busyness = "High";

/* =====================================================
   ACCEPTABLE TRAINING WINDOWS
===================================================== */

/* Medium or low congestion periods */

SELECT *
FROM Gym_Busyness
WHERE busyness = "Medium" OR busyness = "Low"
ORDER BY time_block;

/* Best times of each day for gym-goers */

SELECT day_of_the_week,
time_block,
busyness
FROM Gym_Busyness
WHERE busyness = "Medium" OR busyness = "Low";

/* =====================================================
   CONGESTION DISTRIBUTION
===================================================== */

/* View dataset ordered by congestion level */

SELECT *
FROM Gym_Busyness
ORDER BY busyness;

/* =====================================================
   BAR GRAPH QUERIES
===================================================== */

/* How many Low, Medium, and High congestions for each Time Block:*/

SELECT time_block,
       busyness,
       COUNT(*) AS count
FROM Gym_Busyness
GROUP BY busyness
ORDER BY time_block;




