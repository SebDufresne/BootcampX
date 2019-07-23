SELECT AVG(completed_at - started_at) AS average_assistance_request_duration
FROM assistance_requests AS ass
ORDER BY average_assistance_request_duration;