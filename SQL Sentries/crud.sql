# Create Database and table
CREATE DATABASE techcompany ;

SHOW DATABASES ;

USE techcompany ;

SHOW TABLES ;

CREATE TABLE employee (
    first_name VARCHAR(20),
    middle_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT,
    salary INT,
    location VARCHAR(20)
);

DESCRIBE employee ;

# Read Table
SELECT *
FROM employee ;

/*
    PART: Insert the employees
 */
# ? Good insertion practice
INSERT INTO employee (first_name, middle_name, last_name, age, salary, location)
VALUES ('yasmi', 'tohabar', 'evon', 24, 20000, 'dhaka');

# ! Bad insertion practice
INSERT INTO employee
VALUES ('atik', 'all', 'hasan', 21, 10000, 'khulna');

# ? It is not necessary to insert all the fields if those fields allow NULL
INSERT INTO employee (first_name, last_name, age, salary, location)
VALUES ('babul', 'alam', 32, 2000, 'sylhet');

# Insert ' in the string field
INSERT INTO employee (first_name, middle_name, last_name, age, salary, location)
VALUES ('ashraf\'s', 'malek', 'kodom', 28, 35000, 'dhaka');

# Insert multiple records in a single go
INSERT INTO employee (first_name, middle_name, last_name, age, salary, location)
VALUES ('wakil', 'patel', 'khan', 33, 5000, 'chittagong'),
       ('farid', 'atek', 'hasan', 35, 5500, 'kustia');

# ! String fields don't allow to extend it's maximum length [here, it's 20 for first_name]
INSERT INTO employee (first_name, middle_name, last_name, age, salary, location)
VALUES ('ashrafulhoseinalikuddus', 'hasan', 'mahmud', 60, 1000, 'rangpur');

# ! Field type has to be maintained
INSERT INTO employee (first_name, middle_name, last_name, age, salary, location)
VALUES ('kaled', 'uddin', 'ahmed', 'twentyeight', 1000, 'barisal')
