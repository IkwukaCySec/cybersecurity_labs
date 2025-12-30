-- List all records in the table `offensive_security` with `pentesting` >= `black_hat`
-- Record are ordered in a descending order of scores.
SELECT `pentesting`, `name`
FROM `offensive_security`
WHERE `pentesting` >= `black_hat`
ORDER BY `pentesting` DESC;
