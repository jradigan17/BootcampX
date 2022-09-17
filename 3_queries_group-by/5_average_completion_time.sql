-- Get currently enrolled students average assignment completion time
SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students 
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.id
ORDER BY average_assignment_duration DESC;