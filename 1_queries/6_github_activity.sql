-- return student list where graduated and no git hub info
SELECT name, email, phone
FROM students
WHERE github IS NULL AND end_date IS NOT NULL
ORDER BY name;