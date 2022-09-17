-- Count days with more than 9 assignments
SELECT day, COUNT(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;
