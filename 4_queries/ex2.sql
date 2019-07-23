SELECT COUNT(ass.id), name
FROM assistance_requests AS ass
JOIN students on students.id = student_id
GROUP BY name