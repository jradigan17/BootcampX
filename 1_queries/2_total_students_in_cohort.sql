-- return count of students in cohorts 1-3
SELECT COUNT(*) 
FROM students 
WHERE cohort_id BETWEEN 1 AND 3;