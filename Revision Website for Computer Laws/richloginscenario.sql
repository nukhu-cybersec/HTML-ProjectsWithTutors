CREATE TABLE `User` ( 
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Login VARCHAR(100) NOT NULL, 
  Password VARCHAR(255) NOT NULL, 
  DisplayName VARCHAR(150), 
  Role CHAR(3), 
  LastLogin DATE, 
  Attempts SMALLINT DEFAULT 3 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

INSERT INTO `User` (Login, Password, DisplayName, Role, LastLogin, Attempts) VALUES  ('alice', 'alicepass123', 'Alice Admin', 'ADM', NULL, 8);
SELECT * FROM `User`; 
SELECT ID, Login, DisplayName, Role, LastLogin, Attempts FROM `User` WHERE Login = 'alice' AND Password = 'aliceloveschicken67';

-- Set variables (simulate user input) 
SET @login_input = 'alice'; 
SET @password_input = 'alicepass'; 

-- Use the variables in a query 
SELECT ID, Login, DisplayName, Role, LastLogin, Attempts FROM `User` 
WHERE Login = @login_input AND Password = @password_input; 


UPDATE `User` SET Password = 'aliceloveschicken67' WHERE Login = 'alice'; 
-- Verify change 
SELECT ID, Login, Password FROM `User` WHERE Login = 'alice'; 

UPDATE `User` SET LastLogin = DATETIME() WHERE Login = 'alice'; 
-- Verify change 
SELECT Login, LastLogin FROM `User` WHERE Login = 'alice'; 

SELECT * FROM `User`;