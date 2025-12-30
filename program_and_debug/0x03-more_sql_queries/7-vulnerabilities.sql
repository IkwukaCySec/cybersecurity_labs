-- Create the database `security_info` with the table `vulnerabilities`.
CREATE DATABASE IF NOT EXISTS `security_info`;
CREATE TABLE IF NOT EXISTS `security_info`.vulnerabilities` (
	PRIMARY KEY(`id`),
	`id`		INT 		NOT NULL AUTO_INCREMENT,
	`surface`	INT		NOT NULL,
	`hacker`	VARCHAR(256)	NOT NULL,
	FOREIGN KEY(`surface`)
	REFERENCES `security_info`.`vulnerabilities`(`id`)
);
