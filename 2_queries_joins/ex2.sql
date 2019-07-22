SELECT SUM(duration) AS total_duration
FROM students
INNER JOIN
assignment_submissions ON students.id = student_id
INNER JOIN
cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';