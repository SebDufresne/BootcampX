SELECT name, email, phone, github, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;