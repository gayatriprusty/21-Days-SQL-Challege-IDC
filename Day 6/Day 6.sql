#Day 6
USE hospital;
-- Practice Questions:
-- 1. Count the number of patients by each service.
SELECT service, COUNT(DISTINCT patient_id) AS total_patients FROM patients GROUP BY service;
-- 2. Calculate the average age of patients grouped by service.
SELECT service, AVG(age) avg_age FROM patients GROUP BY service;
-- 3. Find the total number of staff members per role.
SELECT role, COUNT(DISTINCT staff_id) AS total_staff FROM staff GROUP BY role;

-- Daily Challenge:
-- Question: For each hospital service, calculate the total number of patients admitted, total patients refused, 
-- and the admission rate (percentage of requests that were admitted). Order by admission rate descending.
SELECT service, SUM(patients_admitted) AS total_patients_admitted, SUM(patients_refused) AS total_patients_admitted,
ROUND(100*(SUM(patients_admitted)/ SUM(patients_request))) AS admission_rate FROM services_weekly GROUP BY service ORDER BY admission_rate DESC;