-- Get the total number of assistance_requests for a student
SELECT COUNT(assistance_requests.*) AS total_assistances, students.name AS name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name LIKE 'Elliot Dickinson'
GROUP BY students.name
