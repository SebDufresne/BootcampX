SELECT students.name, SUM(ass.duration) / COUNT(ass.duration)
FROM students
JOIN assignment_submissions AS ass ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY SUM(ass.duration) / COUNT(ass.duration) DESC