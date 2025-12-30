-- Create the table `cybersecurity_roles` with table `security_analysts`.
CREATE DATABASE IF NOT EXISTS `cybersecurity_roles`;
CREATE TABLE IF NOT EXISTS `cybersecurity_roles`.`security_analysts` (
	PRIMARY KEY(`id`),
	`id`  INT 	NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(256) NOT NULL
);
