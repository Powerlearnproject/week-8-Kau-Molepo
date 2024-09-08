-- Insert Data into Users Table
INSERT INTO Users (name, age, gender, location) 
VALUES 
('John Doe', 45, 'Male', 'New York'),
('Jane Smith', 30, 'Female', 'Los Angeles'),
('Peter Parker', 50, 'Male', 'Chicago');

-- Insert Data into Health_Metrics Table
INSERT INTO Health_Metrics (user_id, date, bmi, blood_pressure, glucose_level, cholesterol_level)
VALUES 
(1, '2024-08-01', 32.5, '150/90', 140, 210),
(2, '2024-08-01', 25.0, '120/80', 90, 180),
(3, '2024-08-01', 28.2, '130/85', 100, 190);

-- Insert Data into Health_Interventions Table
INSERT INTO Health_Interventions (user_id, recommendation, date)
VALUES 
(1, 'Recommended to reduce salt intake and increase physical activity', '2024-08-02'),
(2, 'Maintain current diet and exercise routine', '2024-08-02'),
(3, 'Increase fiber intake and reduce cholesterol', '2024-08-02');
