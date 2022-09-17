-- return students without gmail account and no phone
SELECT name, id, email, cohort_id 
FROM students
WHERE email NOT LIKE '%@gmail.com' AND phone IS NULL
ORDER BY name