SELECT cohorts.name, SUM(completed_at - started_at) AS total_assistance_duration
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY total_assistance_duration;