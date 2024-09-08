---
noteId: "700f9b806e1e11efb797579543ee5737"
tags: []

---
### SDG 3: Good Health and Well-being

## Step 1: Problem indetification and solution proposition
# Problem:
Within SDG 3, one of the key challenges is reducing the prevalence of non-communicable diseases (NCDs), such as heart disease, diabetes, and obesity. Many communities face difficulties managing their health data, making it hard to track and prevent these conditions. This lack of data hinders the development of targeted interventions and policies to address NCDs.

# Data-driven Solution:
A Health Data Management System that tracks and analyzes individuals' health metrics (e.g., BMI, blood pressure, glucose levels) to identify risks related to non-communicable diseases. This system would allow health professionals to monitor trends and recommend early interventions. The goal is to track individuals' health metrics (BMI, blood pressure, glucose levels, cholesterol levels, etc.) to monitor risks related to non-communicable diseases like heart disease, diabetes, and obesity.

## Step 2: Database Design
# Database Schema:three main tables:
- Users: Stores personal information.
- Health_Metrics: Stores health data for users.
- Health_Interventions: Stores interventions or recommendations made by health professionals.

# Sample Data:
---
    ('John Doe', 45, 'Male', 'New York'),
    ('Jane Smith', 30, 'Female', 'Los Angeles'),
    ('Peter Parker', 50, 'Male', 'Chicago')

    (1, '2024-08-01', 32.5, '150/90', 140, 210),
    (2, '2024-08-01', 25.0, '120/80', 90, 180),
    (3, '2024-08-01', 28.2, '130/85', 100, 190)

    (1, 'Recommended to reduce salt intake and increase physical activity', '2024-08-02'),
    (2, 'Maintain current diet and exercise routine', '2024-08-02'),
    (3, 'Increase fiber intake and reduce cholesterol', '2024-08-02')
---

## Step 3: SQL Programming
# Data Retrieval:
- Query to Identify Users with High Risk of NCDs:
- The following query identifies users with high BMI, high blood pressure, or high glucose levels.
---
    SELECT u.name, u.age, h.bmi, h.blood_pressure, h.glucose_level
    FROM Users u
    JOIN Health_Metrics h ON u.user_id = h.user_id
    WHERE h.bmi > 30 OR h.blood_pressure LIKE '1%' OR h.glucose_level > 126;
---

# Data Analysis:
- Query to Analyze Health Trends in Specific Locations:
- This query calculates the average BMI over time for users in a specific city.
---
    SELECT h.date, AVG(h.bmi) AS avg_bmi
    FROM Health_Metrics h
    JOIN Users u ON u.user_id = h.user_id
    WHERE u.location = 'New York'
    GROUP BY h.date
    ORDER BY h.date;
---
- Query to Retrieve Interventions for Users:
- this query retrieves the interventions recommended for each user.
---
    SELECT u.name, i.recommendation, i.date
    FROM Users u
    JOIN Health_Interventions i ON u.user_id = i.user_id;
---

## Step 4: Export Data to Microsoft Excel
- Export the results of the queries to Microsoft Excel for further analysis.
# Exporting Data to Excel
---
    SELECT u.name, h.bmi, h.blood_pressure, h.glucose_level
    INTO OUTFILE '/week-8-Kau-Molepo/high_risk_users.csv'
    FIELDS TERMINATED BY ',' 
    LINES TERMINATED BY '\n'
    FROM Users u
    JOIN Health_Metrics h ON u.user_id = h.user_id
    WHERE h.bmi > 30 OR h.blood_pressure LIKE '1%' OR h.glucose_level > 126;
---

