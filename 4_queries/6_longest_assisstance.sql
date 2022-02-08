SELECT cohorts.name, AVG(completed_at-started_at)
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY AVG(completed_at-started_at) DESC
LIMIT 1