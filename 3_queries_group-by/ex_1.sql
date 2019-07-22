SELECT day, count(name)
FROM assignments
GROUP BY day
ORDER BY day ASC;