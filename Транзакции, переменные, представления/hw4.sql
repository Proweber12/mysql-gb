PREPARE fresh FROM "DELETE FROM message ORDER BY created_at LIMIT ?";
SET @lim := (SELECT COUNT(*)-5 FROM message);
EXECUTE fresh USING @lim;