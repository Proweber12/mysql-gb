select from_user_id, COUNT(*) as send 
FROM messages 
WHERE to_user_id=101
GROUP BY from_user_id
ORDER BY send DESC;