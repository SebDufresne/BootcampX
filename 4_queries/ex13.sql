SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, COUNT(ass_req.*) AS total_assistances
FROM teachers
JOIN assistance_requests AS ass_req ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teachers.name