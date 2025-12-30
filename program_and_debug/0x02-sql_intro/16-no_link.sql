-- List all records of the table `offensive_security` having a name value.
-- Records are ordered by descending hacks score.
SELECT `hacks`, `name`
FROM `offensive_security`
WHERE `name` != ""
ORDER BY `hacks` DESC;
