-- HOW TO ADD SECURITY TO YOUR DATABASE ? -- 

CREATE USER  'username'@'localhost' IDENTIFIED BY 'password';

-- username of the user and localhost IP address 

-- Grant Permissions 

GRANT SELECT, INSERT ON school.students TO 'username'@'localhost';

-- Grant additional permissions

GRANT UPDATE ON school.students TO 'username'@'localhost';

-- Revoke Permissions

REVOKE SELECT, INSERT ON school.students FROM 'username'@'localhost';

-- Change Passwords

ALTER USER 'username'@'localhost' IDENTIFIED BY 'encryptedPassword';

-- Delete a User

DROP USER 'username'&'localhost';