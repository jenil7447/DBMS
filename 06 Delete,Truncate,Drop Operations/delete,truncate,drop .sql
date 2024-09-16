--DELETE, Truncate, Drop Operation
--Part – A:
--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT >= 4000;

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME = 'CHANDI';

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 105;

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

SELECT * FROM DEPOSIT_DETAIL


--Part – B:
--Create following table using query according to the definition.

CREATE TABLE EMPLOYEE_MASTER (
	EMPNO INT,
	EMPNAME VARCHAR(25),
	JOININGDATE DATETIME,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(20)
);

DROP TABLE EMPLOYEE_MASTER

SELECT * FROM EMPLOYEE_MASTER

--Insert the following records in the EMPLOYEE_MASTER table

INSERT INTO EMPLOYEE_MASTER VALUES 
(101, 'KEYUR', '2002-1-5', 12000, 'RAJKOT'),
(102, 'HARDIK', '2004-2-15', 14000, 'AHMEDABAD'),
(103, 'KAJAL', '2006-3-14', 15000, 'BARODA'),
(104, 'BHOOMI', '2005-6-23', 12500, 'AHMEDABAD'),
(105, 'HARMIT', '2004-2-15', 14000, 'RAJKOT'),
(106, 'MITESH', '2001-9-25', 5000, 'JAMNAGAR'),
(107, 'MEERA', NULL, 7000, 'MORBI'),
(108, 'KISHAN', '2003-2-6', 10000, 'NULL')


SELECT * FROM EMPLOYEE_MASTER


--From the above given tables perform the following queries (DELETE Operation):

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE EMPLOYEE_MASTER WHERE SALARY >= 14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE EMPLOYEE_MASTER WHERE CITY = 'RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007.
DELETE EMPLOYEE_MASTER WHERE JOININGDATE > '2007-1-1';

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE EMPLOYEE_MASTER
WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL;

--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY = 20000*50/100;

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY = '';

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER;

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER;

SELECT * FROM EMPLOYEE_MASTER
