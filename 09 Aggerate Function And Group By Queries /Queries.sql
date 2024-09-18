--Part – A:


--Create table and inset records as per below.

CREATE TABLE EMP (
	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY INT,
	JOININGDATE DATETIME,
	CITY VARCHAR(25)
);

SELECT * FROM EMP;

INSERT INTO EMP VALUES
(101, 'RAHUL', 'ADMIN', 56000, '1990-1-1', 'RAJKOT'),
(102, 'HARDIK', 'IT', 18000, '1990-9-25', 'AHMEDABAD'),
(103, 'BHAVIN', 'HR', 25000, '1991-5-14', 'BARODA'),
(104, 'BHOOMI', 'ADMIN', 39000, '1991-2-8', 'RAJKOT'),
(105, 'ROHIT', 'IT', 17000, '1990-7-23', 'JAMNAGAR'),
(106, 'PRIYA', 'IT', 9000, '1990-10-18', 'AHMEDABAD'),
(107, 'BHOOMI', 'HR', 34000, '1991-12-25', 'RAJKOT');


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMP;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMP;

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS TOTAL_EMPS FROM EMP;

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY)
FROM EMP
WHERE CITY = 'RAJKOT';

--5. Give maximum salary from IT department.
SELECT DEPARTMENT, MAX(SALARY)
FROM EMP
where department = 'it'
Group BY DEPARTMENT; 

--OR

SELECT MAX(SALARY)
FROM EMP
WHERE DEPARTMENT = 'IT';

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(*)
FROM EMP
WHERE JOININGDATE > '1991-2-8';

--7. Display average salary of Admin department.
SELECT AVG(SALARY)
FROM EMP
WHERE DEPARTMENT = 'ADMIN';

--8. Display total salary of HR department.
SELECT SUM(SALARY)
FROM EMP
WHERE DEPARTMENT = 'HR';

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS CITIES FROM EMP;

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS DEPARTMENTS FROM EMP;

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT CITY, MIN(SALARY) AS MIN_SALARY
FROM EMP
--WHERE CITY = 'AHMEDABAD'
GROUP BY CITY
HAVING CITY = 'AHMEDABAD';

--12. Find city wise highest salary.
SELECT CITY, MAX(SALARY) AS HIGHEST_SALARY
FROM EMP
GROUP BY CITY;

--13. Find department wise lowest salary.
SELECT DEPARTMENT, MIN(SALARY) AS LOWEST_SALARY
FROM EMP
GROUP BY DEPARTMENT;

--14. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(*) AS EMPLOYEES
FROM EMP
GROUP BY CITY;

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPARTMENT;

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPARTMENT;


--Part – B:

--1. Count the number of employees living in Rajkot.
SELECT CITY, COUNT(*) AS EMPLOYEES
FROM EMP
GROUP BY CITY
HAVING CITY = 'RAJKOT';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE
FROM EMP;

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(*)
FROM EMP
WHERE JOININGDATE < '1991-1-1';

--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(*)
FROM EMP
WHERE CITY = 'RAJKOT' OR CITY = 'BARODA';

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(*)
FROM EMP
WHERE JOININGDATE < '1991-1-1' AND DEPARTMENT = 'IT';

--3. Find the Joining Date wise Total Salaries.
SELECT JOININGDATE, SUM(SALARY)
FROM EMP
GROUP BY JOININGDATE;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT, CITY, MAX(SALARY)
FROM EMP
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT, CITY;


--EXTRA QUERIES:

--1. FIND THE HIGHEST SALARY IN EACH DEPARTMENT.
SELECT DEPARTMENT, MAX(SALARY) AS HIGHEST_SALARY
FROM EMP
GROUP BY DEPARTMENT;

--2. CALCULATE THE AVERAGE SALARY FROM EACH CITY.
SELECT CITY ,AVG(SALARY) AS AVERAGE_SALARY
FROM EMP
GROUP BY CITY;

--3. FIND THE SECOND HIGHEST SALARY IN THE ENTIRE DEPARTMENT.
SELECT MAX(SALARY) AS SALARY
FROM EMP
WHERE SALARY <> (SELECT MAX(SALARY) FROM EMP);

--4. FIND EMPLOYEES WHO JOINED IN THE FIRST HALF OF ANY YEAR.
SELECT COUNT(*)
FROM EMP
WHERE MONTH(JOININGDATE) < 7;

--5. DIAPLAY THE NAME AND SALARY OF THE EMPLOYEE WHO JOINED LAST.
SELECT TOP 1 ENAME, SALARY
FROM EMP
ORDER BY JOININGDATE DESC;
