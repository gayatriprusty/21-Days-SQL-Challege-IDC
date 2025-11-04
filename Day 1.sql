USE hospital;

-- Day 1
-- Practice Questions
SELECT * FROM patients;
SELECT patient_id, name, age FROM patients;
SELECT * FROM services_weekly LIMIT 10;

-- Daily Challenge 
SELECT DISTINCT service from services_weekly; 