-- Query to Identify Users with High Risk of NCDs:
-- The following query identifies users with high BMI, high blood pressure, or high glucose levels.
SELECT u.name, u.age, h.bmi, h.blood_pressure, h.glucose_level
FROM Users u
JOIN Health_Metrics h ON u.user_id = h.user_id
WHERE h.bmi > 30 OR h.blood_pressure LIKE '1%' OR h.glucose_level > 126;

-- Query to Analyze Health Trends in Specific Locations:
-- This query calculates the average BMI over time for users in a specific city.
SELECT h.date, AVG(h.bmi) AS avg_bmi
FROM Health_Metrics h
JOIN Users u ON u.user_id = h.user_id
WHERE u.location = 'New York'
GROUP BY h.date
ORDER BY h.date;

-- Query to Retrieve Interventions for Users:
-- this query retrieves the interventions recommended for each user.
SELECT u.name, i.recommendation, i.date
FROM Users u
JOIN Health_Interventions i ON u.user_id = i.user_id;

