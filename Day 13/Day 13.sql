#Day 13
-- Practice Questions:
-- 1. Join patients and staff based on their common service field (show patient and staff who work in same service).
SELECT p.patient_id, p.name AS patient_name, p.service, s.staff_id, s.name AS staff_name FROM patients p INNER JOIN staff s ON p.service = s.service;
-- 2. Join services_weekly with staff to show weekly service data with staff information.
SELECT s.week, s.service, st.staff_id, st.staff_name, st.role FROM services_weekly s INNER JOIN staff st ON s.service = st.service;
-- 3. Create a report showing patient information along with staff assigned to their service.
SELECT p.patient_id, p.patient_name, p.service, s.staff_id, s.staff_name, s.role FROM patients p INNER JOIN staff s ON p.service = s.service;

### Daily Challenge:
-- Question: Create a comprehensive report showing patient_id, patient name, age, service, 
-- and the total number of staff members available in their service. 
-- Only include patients from services that have more than 5 staff members. Order by number of staff descending, then by patient name.
SELECT p.patient_id, p.name, p.age, p.service, COUNT(DISTINCT s.staff_id) AS staff_count FROM patients p INNER JOIN staff s ON p.service = s.service 
GROUP BY p.patient_id HAVING staff_count > 5 ORDER BY staff_count DESC, p.name;