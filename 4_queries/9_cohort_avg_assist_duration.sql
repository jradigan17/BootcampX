-- Calculate the average total duration of assistance requests for each cohort
SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at)/COUNT(DISTINCT cohorts.*) AS total_duration
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
ORDER BY total_duration;

-- Option 2

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;