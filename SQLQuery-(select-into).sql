------------------------------------LAB_3--------------------------
-----PART_A------------------------
CREATE TABLE CRICKET(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT)

INSERT INTO CRICKET VALUES
( 'SACHINE TENDULKAR', 'MUMBAI',40),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30);

SELECT * FROM CRICKET;

--1.Create table Worldcup from cricket with all the columns and data.
	SELECT *INTO WORLDCUP FROM CRICKET;
	SELECT *FROM WORLDCUP;

--2.Create table T20 from cricket with first two columns with no data.
	SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=0;
    SELECT *FROM T20;
	
--3.Create table IPL From Cricket with No Data.
	SELECT *INTO IPL FROM CRICKET WHERE 1=0;
	SELECT *FROM IPL;

	------PART_B-------------------------------------
	CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT)

INSERT INTO EMPLOYEE(Name,City,Age) VALUES 
	('Jay Patel','Rajkot',30),
	('Rahul Dave','Baroda',35),
	('Jeet Patel','Surat',31),
	('Vijay Raval','Rajkot',30)

	SELECT *FROM EMPLOYEE;

--	1.Create table Employee_detail from Employee with all the columns and data.
	SELECT *INTO EMPLOYEE_DETAIL FROM EMPLOYEE;
	SELECT *FROM EMPLOYEE_DETAIL;

--2.Create table Employee_data from Employee with first two columns with no data.
	SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=0;
	SELECT *FROM EMPLOYEE_DATA;

--3.Create table Employee_info from Employee with no Data.
  SELECT *INTO EMPLOYEE_INFO  FROM EMPLOYEE WHERE 1=0;
  SELECT *FROM EMPLOYEE_INFO;

---PART-C-------------------------------------------------------------

--1 Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'
--2 Insert the Data into Employee_info from Employee whose age is more than 32
INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE AGE>32




