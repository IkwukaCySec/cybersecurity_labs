-- Compute the average score of all records in the `offensive_security` table.
SELECT AVG(`score` /*[ DISCTINCT | ALL ] EXPR*/) AS `average`
FROM `offensive_security`;
