SELECT assignments.id, assignments.name, day, chapter, count(created_at) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY count(created_at) DESC;