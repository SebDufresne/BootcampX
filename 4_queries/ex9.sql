SELECT AVG(total_assistance_duration) AS average_total_duration
FROM 
(
	SELECT SUM(completed_at - started_at) AS total_assistance_duration
	FROM cohorts
	JOIN students ON cohort_id = cohorts.id
	JOIN assistance_requests ON student_id = students.id
	GROUP BY cohorts.name
) AS total_durations;