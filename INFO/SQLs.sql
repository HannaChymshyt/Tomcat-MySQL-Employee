
CREATE DATABASE demo_db;

CREATE TABLE IF NOT EXISTS employees
( id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  position VARCHAR(128) NOT NULL,
  phone VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM employees;

DELETE FROM employees WHERE id = 2;

UPDATE employees SET position = "emperor" WHERE id = 1;

INSERT INTO employees (name, position, phone) VALUES ("John", "LordCommander", "111777888");