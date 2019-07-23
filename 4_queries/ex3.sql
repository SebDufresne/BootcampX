SELECT teachers.name,
students.name,
assignments.name,
(completed_at - started_at) AS duration
FROM assistance_requests AS ass
JOIN teachers on teachers.id = teacher_id
JOIN students on students.id = student_id
JOIN assignments on assignments.id = assignment_id
ORDER BY duration;