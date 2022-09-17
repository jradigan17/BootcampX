-- return students currently in an active cohort
SELECT name, id, cohort_id 
FROM students
WHERE end_date IS NULL 
ORDER BY name;