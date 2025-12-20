ALTER TABLE gaming_performance
ALTER COLUMN user_id NVARCHAR(20);

CREATE DATABASE GamingPerformanceDB;




SELECT TOP 10 * 
FROM gaming_performance;



--1: Average Daily Gaming Hours

SELECT AVG(daily_gaming_hours) AS avg_daily_gaming_hours
FROM gaming_performance;

--2: Average Academic/Work Score
SELECT AVG(academic_or_work_score) AS avg_academic_score
FROM gaming_performance;


--3 : Max Stress Level and Corresponding User Count
SELECT MAX(stress_level) AS max_stress_level,
       COUNT(*) AS num_users_with_max_stress
FROM gaming_performance;

--4 : Productivity Levels Summary (Count per Level)
SELECT productivity_level, COUNT(*) AS num_users
FROM gaming_performance
GROUP BY productivity_level
ORDER BY num_users DESC;

--5 : Performance Impact Distribution
SELECT performance_impact, COUNT(*) AS num_users
FROM gaming_performance
GROUP BY performance_impact
ORDER BY num_users DESC;
