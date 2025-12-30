-- List the number of hacks same as the ones in the `offensive_security`.
-- The hacks are ordered by descending count.
SELECT `hacker`, COUNT(*) AS `number`
FROM `offensive_security`
GROUP BY `hacks`
ORDER BY `number` DESC;
