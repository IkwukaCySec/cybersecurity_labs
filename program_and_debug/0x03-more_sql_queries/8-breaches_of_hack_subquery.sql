-- List all infos of breaches in the database `security_info`.
-- Results are ordered by ascending breach.id.
SELECT `id`, `name`
  FROM `breaches`
 WHERE `breach_id` IN
       (SELECT `id`
	        FROM `security_info`
	       WHERE `name` = "Malware")
ORDER BY `id`;
