---  Sub Queries

CREATE TABLE STUDENT_DATA
(
    RNO INT,
    NAME VARCHAR(25),
    CITY VARCHAR(25),
    DID INT
);

CREATE TABLE ACADEMIC
(
    RNO INT,
    SPI DECIMAL(3,2),
    BKLOG INT
);

CREATE TABLE DEPARTMENT
(
    DID INT,
    DNAME VARCHAR(25)
);

INSERT INTO STUDENT_DATA
VALUES
    (101, 'Raju', 'Rajkot', 10 ),
    (102, 'Amit', 'Ahmedabad', 20 ),
    (103, 'Sanjay', 'Baroda', 40 ),
    (104, 'Neha', 'Rajkot', 20 ),
    (105, 'Meera', 'Ahmedabad', 30 ),
    (106, 'Mahesh', 'Baroda', 10);

SELECT *
FROM STUDENT_DATA

INSERT INTO ACADEMIC
VALUES
    (101, 8.8, 0 ),
    (102, 9.2, 2 ),
    (103, 7.6, 1 ),
    (104, 8.2, 4 ),
    (105, 7.0, 2 ),
    (106, 8.9, 3 );

SELECT *
FROM ACADEMIC

INSERT INTO DEPARTMENT
VALUES
    (10, 'Computer') ,
    (20, 'Electrical') ,
    (30, 'Mechanical') ,
    (40, 'Civil');

SELECT *
FROM DEPARTMENT

-- Part – A: 
-- 01. Display details of students who are from computer department. 

SELECT *
FROM STUDENT_DATA
WHERE DID=
        (SELECT DID
        FROM DEPARTMENT
        WHERE DNAME='COMPUTER');

-- 02. Displays name of students whose SPI is more than 8. 

SELECT NAME
FROM STUDENT_DATA
WHERE RNO IN
            (SELECT RNO
            FROM ACADEMIC
            WHERE SPI>8);

-- 03. Display details of students of computer department who belongs to Rajkot city. 

SELECT *
FROM STUDENT_DATA
WHERE CITY='RAJKOT' AND DID=
                            (SELECT DID
                                FROM DEPARTMENT
                                WHERE DNAME='COMPUTER')

-- 04. Find total number of students of electrical department. 

SELECT COUNT(RNO)
FROM STUDENT_DATA
WHERE DID=
        (SELECT DID
        FROM DEPARTMENT
        WHERE DNAME='ELECTRICAL')

-- 05. Display name of student who is having maximum SPI. 

SELECT NAME
FROM STUDENT_DATA
WHERE RNO IN
            (SELECT RNO
             FROM ACADEMIC
             WHERE SPI=
                        (SELECT MAX(SPI)
                        FROM ACADEMIC)
            );
-- 06. Display details of students having more than 1 backlog.

SELECT NAME
FROM STUDENT_DATA
WHERE RNO IN 
            (SELECT RNO
            FROM ACADEMIC
            WHERE BKLOG>1);

-- 1. Display name of students who are either from computer department or from mechanical department.

SELECT Name
FROM STUDENT_DATA
WHERE DID IN
            (SELECT DID
            FROM DEPARTMENT
            WHERE DNAME = 'COMPUTER' OR DNAME = 'MECHANICAL');

-- 2. Display name of students who are in same department as 102 studying in.

SELECT Name
FROM STUDENT_DATA
WHERE DID IN 
            (SELECT DID
            FROM STUDENT_DATA
            WHERE RNO = 102);


-- Part – C:

-- 1. Display name of students whose SPI is more than 9 and who is from electrical department.

SELECT Name
FROM STUDENT_DATA
WHERE DID = 
            (SELECT DID
            FROM DEPARTMENT
            WHERE DNAME = 'ELECTRICAL')
    AND RNO IN 
            (SELECT RNO
            FROM ACADEMIC
            WHERE SPI > 9);

-- 2. Display name of student who is having second highest SPI.

SELECT MAX(SPI)
FROM ACADEMIC
WHERE SPI < 
            (SELECT MAX(SPI)
            FROM ACADEMIC);

-- 3. Display city names whose students branch wise SPI is 9.2

SELECT CITY , DID
FROM STUDENT_DATA
WHERE RNO IN 
            (SELECT RNO
            FROM ACADEMIC
            WHERE SPI = 9.2)
GROUP BY DID , CITY;

