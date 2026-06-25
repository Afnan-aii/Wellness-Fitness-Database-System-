
CREATE DATABASE HealthHubDB;
USE HealthHubDB;


CREATE TABLE HealthHubDB.Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    city VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);



CREATE TABLE HealthHubDB.Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    trainer_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    experience_years INT,
    salary DECIMAL(10,2),
    contact_number VARCHAR(15)
);



CREATE TABLE HealthHubDB.Workouts (
    workout_id INT PRIMARY KEY AUTO_INCREMENT,
    workout_name VARCHAR(100),
    workout_type VARCHAR(50),
    duration_minutes INT,
    calories_burned INT
);



CREATE TABLE HealthHubDB.DietPlans (
    diet_id INT PRIMARY KEY AUTO_INCREMENT,
    meal_name VARCHAR(100),
    calories INT,
    protein INT,
    carbs INT,
    fats INT
);



CREATE TABLE HealthHubDB.Memberships (
    membership_id INT PRIMARY KEY AUTO_INCREMENT,
    membership_type VARCHAR(50),
    price DECIMAL(10,2),
    duration_months INT
);



INSERT INTO HealthHubDB.Users 
(full_name, age, gender, weight, height, city, email, password)
VALUES
('Ali Raza', 21, 'Male', 72.50, 176.00, 'Lahore', 'ali@gmail.com', 'ali123'),

('Sara Khan', 24, 'Female', 58.00, 165.00, 'Karachi', 'sara@gmail.com', 'sara123'),

('Ahmed Noor', 27, 'Male', 80.00, 180.00, 'Islamabad', 'ahmed@gmail.com', 'ahmed123');



INSERT INTO HealthHubDB.Trainers
(trainer_name, specialization, experience_years, salary, contact_number)
VALUES
('Usman Fitness', 'Weight Loss', 5, 50000, '03001112222'),

('Hina Coach', 'Yoga', 3, 45000, '03112223333'),

('Bilal Trainer', 'Body Building', 7, 70000, '03223334444');



INSERT INTO HealthHubDB.Workouts
(workout_name, workout_type, duration_minutes, calories_burned)
VALUES
('Morning Cardio', 'Cardio', 30, 250),

('Strength Training', 'Gym', 45, 400),

('Yoga Session', 'Yoga', 60, 180);



INSERT INTO HealthHubDB.DietPlans
(meal_name, calories, protein, carbs, fats)
VALUES
('Oatmeal Breakfast', 350, 15, 45, 8),

('Chicken Salad', 500, 40, 20, 15),

('Protein Shake', 250, 30, 10, 5);



INSERT INTO HealthHubDB.Memberships
(membership_type, price, duration_months)
VALUES
('Basic', 3000, 1),

('Standard', 8000, 3),

('Premium', 15000, 6);



-- Show all users
SELECT * FROM HealthHubDB.Users;

-- Show all HealthHubDB.trainers
SELECT * FROM HealthHubDB.Trainers;

-- Show all HealthHubDB.workouts
SELECT * FROM HealthHubDB.Workouts;

-- Show users older than 22
SELECT * FROM HealthHubDB.Users
WHERE age > 22;

-- Show female users
SELECT * FROM HealthHubDB.Users
WHERE gender = 'Female';

-- Show workouts burning more than 200 calories
SELECT * FROM HealthHubDB.Workouts
WHERE calories_burned > 200;

-- Show trainers with more than 4 years experience
SELECT * FROM HealthHubDB.Trainers
WHERE experience_years > 4;

-- Sort users by age
SELECT * FROM HealthHubDB.Users
ORDER BY age ASC;

-- Sort memberships by price
SELECT * FROM HealthHubDB.Memberships
ORDER BY price DESC;



-- Count total users
SELECT COUNT(*) AS Total_Users
FROM HealthHubDB.Users;

-- Average user weight
SELECT AVG(weight) AS Average_Weight
FROM HealthHubDB.Users;

-- Maximum calories burned
SELECT MAX(calories_burned) AS Highest_Calories
FROM HealthHubDB.Workouts;

-- Minimum membership price
SELECT MIN(price) AS Lowest_Price
FROM HealthHubDB.Memberships;



UPDATE HealthHubDB.Users
SET weight = 75.00
WHERE user_id = 1;



DELETE FROM HealthHubDB.Workouts
WHERE workout_id = 3;



ALTER TABLE HealthHubDB.Users
ADD phone_number VARCHAR(15);

