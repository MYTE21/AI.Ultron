# Show Databases
SHOW DATABASES ;

# Create Database
CREATE DATABASE techcompany ;

# Drop Database
DROP DATABASE techcompany ;

# Use a Database
USE techcompany ;

# Selected Database
SELECT DATABASE() ;

/* Basic Datatype of SQL
   ---------------------
    - INT for Numeric
    - VARCHAR for String
*/

# Create Table
CREATE TABLE employee (
    name VARCHAR(50),
    age INT,
    salary INT
);

# Show All Tables
SHOW TABLES ;

# Detail Description of employee Table
DESCRIBE employee ;