    SELECT u.name, h.bmi, h.blood_pressure, h.glucose_level
    INTO OUTFILE '/week-8-Kau-Molepo/high_risk_users.csv'
    FIELDS TERMINATED BY ',' 
    LINES TERMINATED BY '\n'
    FROM Users u
    JOIN Health_Metrics h ON u.user_id = h.user_id
    WHERE h.bmi > 30 OR h.blood_pressure LIKE '1%' OR h.glucose_level > 126;