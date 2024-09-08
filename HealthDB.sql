CREATE DATABASE HealthDB;

USE HealthDB;

-- Create Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    location VARCHAR(100)
);

-- Create Health_Metrics Table
CREATE TABLE Health_Metrics (
    metric_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATE,
    bmi DECIMAL(5, 2),
    blood_pressure VARCHAR(10),
    glucose_level DECIMAL(5, 2),
    cholesterol_level DECIMAL(5, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Health_Interventions Table
CREATE TABLE Health_Interventions (
    intervention_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    recommendation TEXT,
    date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
