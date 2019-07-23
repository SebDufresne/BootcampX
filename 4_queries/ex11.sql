SELECT day, COUNT(ass.id) AS number_of_assignments, SUM(duration) AS duration
FROM assignments AS ass
GROUP BY day
ORDER BY day