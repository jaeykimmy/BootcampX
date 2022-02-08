SELECT count(assistance_requests.*), name
FROM assistance_requests
JOIN students on students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name