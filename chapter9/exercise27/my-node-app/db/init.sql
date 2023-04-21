CREATE DATABASE IF NOT EXISTS mydatabase;

USE mydatabase;

CREATE TABLE IF NOT EXISTS 
 mytable (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL,
  reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO mytable (name, email) VALUES ('John Doe', 'john.doe@example.com');
INSERT INTO mytable (name, email) VALUES ('Jane Doe', 'jane.doe@example.com');
INSERT INTO mytable (name, email) VALUES ('Bob Smith', 'bob.smith@example.com');