SELECT COUNT(ass.id), name
FROM assistance_requests AS ass
JOIN teachers on teachers.id = teacher_id
GROUP BY name