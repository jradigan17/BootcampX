-- Get important data about each assistance request
SELECT teachers.name, students.name, assignments.name, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
JOIN assignments ON assignments.id = assignment_id
GROUP BY teachers.name, students.name, assignments.name
ORDER BY duration