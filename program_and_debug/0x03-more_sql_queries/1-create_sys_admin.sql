-- Create the user `sys_admin_1` with all privileges.
CREATE USER
	IF NOT EXISTS 'sys_admin_1'@'localhost'
	IDENTIFIED BY 'sys_admin_1';
GRANT ALL PRIVILEGES
	ON *.*
	TO 'sys_admin_1'@'localhost';
