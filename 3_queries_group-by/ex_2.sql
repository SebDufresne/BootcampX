SELECT day, count(name)
FROM assignments
GROUP BY day
HAVING count(name) >= 10
ORDER BY day;