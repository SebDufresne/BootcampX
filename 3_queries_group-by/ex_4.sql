SELECT cohorts.name, COUNT(ass.*)
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
JOIN assignments AS ass ON ass.id = assignment_id
GROUP BY cohorts.name
ORDER BY COUNT(ass.*) DESC