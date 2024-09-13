-- To create database
Create Database EmployeeManagemntDb;

-- to select database
USE EmployeeManagemntDb;
-- to create table
CREATE TABLE PERSON
(
   id INT PRIMARY KEY auto_increment,
   first_name VARCHAR(255) NOT NULL,
   last_name VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
);
DESC PERSON;
SELECT * FROM PERSON;

INSERT INTO PERSON(first_name,last_name)
VALUES("rahul","dravid");

INSERT INTO PERSON (first_name,last_name)
VALUES('rohit','sharma');

INSERT INTO PERSON(first_name,last_name)
VALUES('virat','kohli'),
    ('suryakumar','yadav');
    
-- to query virat by name
SELECT * FROM PERSON WHERE first_name='virat';

-- to query all persons
SELECT * id, first_name,last_name From person;
-- to query virat by name
SELECT * FROM PERSON;

INSERT INTO PERSON (first_name,last_name)
VALUES('Maheshwaran','G');

-- to update maheshwaran lastname as 'Govindraju'
UPDATE Person
SET last_name='Govindaraju'
WHERE id=5;

DELETE FROM PERSON
WHERE id=5;

-- DEPARTMENTS
CREATE TABLE DEPARTMAENTS
(
   id INT PRIMARY KEY auto_increment,
   nameVARCHAR(100) NOT NULL
);
   



