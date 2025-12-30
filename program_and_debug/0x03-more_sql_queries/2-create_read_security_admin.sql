-- Create the database `security_admin` and the user `security_analyst`.
-- The `security_analyst` has SELECT privilege on `security_admin` with password
CREATE DATABASE
	IF NOT EXISTS `security_admin`;
CREATE USER
	IF NOT EXISTS 'security_analyst'@'localhost'
	IDENTIFIED BY 'security_analyst_pwd';
GRANT SELECT
	ON 'security_admin'.*
	TO 'security_analyst'@'localhost';
