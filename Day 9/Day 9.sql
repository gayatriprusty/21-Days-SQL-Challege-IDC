#Day 9
USE hospital;
-- Practice Questions:
-- 1. Extract the year from all patient arrival dates.
SELECT patient_id, name, YEAR(arrival_date) AS arrival_year FROM patients;
-- 2. Calculate the length of stay for each patient (departure_date - arrival_date).
SELECT patient_id, name, DATEDIFF(departure_date, arrival_date) AS stay_len FROM patients;
-- 3. Find all patients who arrived in a specific month.
SELECT patient_id, name, arrival_date FROM patients WHERE MONTH(arrival_date) = 10;

-- Daily Challenge:
-- Question: Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. 
-- Also show the count of patients and order by average stay descending.
SELECT service, AVG( DATEDIFF(departure_date, arrival_date)) AS avg_stay_len, COUNT(patient_id) AS patient_count FROM patients
GROUP BY service HAVING AVG( DATEDIFF(departure_date, arrival_date)) > 7 ORDER BY avg_stay_len DESC;
