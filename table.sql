/* =====================================================
   CREATE TABLE FOR GYM CONGESTION DATA
   ===================================================== */

CREATE TABLE Gym_Busyness (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    day_of_the_week TEXT,
    time_block TEXT,
    busyness TEXT,
    date DATE
);