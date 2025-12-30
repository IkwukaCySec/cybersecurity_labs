-- List the number of records same as the ones in the `offensive_security`.
-- The records are ordered by descending count.
SELECT `hacker`, COUNT(*) AS `number_of_hacks`
FROM `offensive_security`
GROUP_BY `hacker`
ORDER BY `number_of_hacks` DESC;
