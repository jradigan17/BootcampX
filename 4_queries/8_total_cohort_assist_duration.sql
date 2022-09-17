-- Get the total duration of all assistance requests for each cohort
SELECT cohorts.name AS cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;