# Create Database and table
CREATE DATABASE techcompany ;

SHOW DATABASES ;

USE techcompany ;

SHOW TABLES ;

# Not Null
CREATE TABLE employee (
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL
);

DESCRIBE employee ;

# ! NOT Null Error
INSERT INTO employee(middle_name, last_name, age, salary, location)
VALUES ('al', 'hasan', 20, 1000, 'barisal');

# Default Value
DROP TABLE employee;

# Default Value adding into table
CREATE TABLE employee (
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) DEFAULT 'dhaka'
);

DESCRIBE employee;

# ? Without inserting any value the Default valued field will take its predefined value
INSERT INTO employee(first_name, last_name, age, salary)
VALUES ('zarif', 'alam', 23, 2000);

SELECT *
FROM employee ;

INSERT INTO employee(first_name, last_name, age, salary, location)
VALUES ('gazi', 'hasan', 23, 1000, 'gazipur');

# ! Inserting null values into a field
INSERT INTO employee (first_name, last_name, age, salary, location)
VALUES ('kashem', 'sharkar', 20, 1000, null);

/*
 Combination of Not Null and Default value
 */
DROP TABLE employee ;

CREATE TABLE employee (
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'dhaka'
);

# ? Now null value can't be inserted into location field but can remain default valued
INSERT INTO employee (first_name, last_name, age, salary, location)
VALUES ('kashem', 'sharkar', 20, 1000, null);

INSERT INTO employee (first_name, last_name, age, salary)
VALUES ('chenler', 'bing', 30, 10000);

SELECT *
FROM employee;