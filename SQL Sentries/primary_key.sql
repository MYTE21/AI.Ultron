# Select employee table
SELECT *
FROM employee;

# Insert same input twice
# ! How to identify this two input individually?
# ? Ans: Primary Key
INSERT INTO employee(first_name, last_name, age, salary, location)
VALUES ('chenler', 'bing', 30, 10000, 'dhaka');

INSERT INTO employee(first_name, last_name, age, salary, location)
VALUES ('chenler', 'bing', 30, 10000, 'dhaka');

/* Primary Key
   - Uniquely identify each record in the table.
*/
# Drop the table and recreate it with primary key
DROP TABLE employee;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'dhaka'
);

# Same as before, only slight syntax change of PRIMARY KEY
CREATE TABLE employee (
    id INT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'dhaka',
    PRIMARY KEY (id)
);

# Composite primary key - containing multiple columns
CREATE TABLE employee (
    id INT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'dhaka',
    PRIMARY KEY (id, first_name)
);

# Auto increment primary value
CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'dhaka',
    PRIMARY KEY (id)
);

DESCRIBE employee;

INSERT INTO employee(first_name, last_name, age, salary, location)
VALUES ('chenler', 'bing', 30, 10000, 'dhaka');

INSERT INTO employee(first_name, last_name, age, salary, location)
VALUES ('ross', 'galler', 31, 20000, 'dhaka');