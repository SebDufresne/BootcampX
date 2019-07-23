SELECT ass.id, day, chapter, name, count(ass_req.*) AS total_requests
FROM assignments AS ass
JOIN assistance_requests AS ass_req ON ass.id = assignment_id
GROUP BY ass.id
ORDER BY total_requests DESC