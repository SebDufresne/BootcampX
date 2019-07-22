SELECT students.name, 
AVG(ass.duration) AS average_assignement_duration,
AVG(ass2.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions AS ass ON students.id = student_id
JOIN assignments AS ass2 ON ass2.id = ass.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(ass2.duration) > AVG(ass.duration)
ORDER BY SUM(ass.duration) / COUNT(ass.duration) ASC