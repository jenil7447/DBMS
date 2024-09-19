-- SET OPERATORS

-- PART - A

CREATE TABLE Computer
(
    RollNo INT,
    Name VARCHAR(50)
);

INSERT INTO Computer
    (RollNo, Name)
VALUES
    (101, 'Ajay'),
    (109, 'Haresh'),
    (115, 'Manish');

CREATE TABLE Electrical
(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical
    (RollNo, Name)
VALUES
    (105, 'Ajay'),
    (107, 'Mahesh'),
    (115, 'Manish');

-- 1. Display name of students who is either in Computer or in Electrical.

    SELECT *
    FROM Electrical
UNION
    SELECT *
    FROM Computer;

-- 2. Display name of students who is either in Computer or in Electrical including duplicate data.

    SELECT *
    FROM Electrical
UNION ALL
    SELECT *
    FROM Computer;

-- 3. Display name of students who is in both Computer and Electrical.

    SELECT *
    FROM Electrical
INTERSECT
    SELECT *
    FROM Computer;

-- 4. Display name of students who are in Computer but not in Electrical.

    SELECT *
    FROM Computer
EXCEPT
    SELECT *
    FROM Electrical;

-- 5. Display name of students who are in Electrical but not in Computer.

    SELECT *
    FROM Electrical
EXCEPT
    SELECT *
    FROM Computer;

-- 6. Display all the details of students who are either in Computer or in Electrical.

    SELECT *
    FROM Computer
UNION
    SELECT *
    FROM Electrical;

-- 7. Display all the details of students who are in both Computer and Electrical.

    SELECT *
    FROM Computer
INTERSECT
    SELECT *
    FROM Electrical;


-- PART - B

CREATE TABLE Emp_DATA
(
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA
    (EID, Name)
VALUES
    (1, 'Ajay'),
    (9, 'Haresh'),
    (5, 'Manish');

CREATE TABLE Customer
(
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer
    (CID, Name)
VALUES
    (5, 'Ajay'),
    (7, 'Mahesh'),
    (5, 'Manish');

-- 1. Display name of persons who is either Employee or Customer.

    SELECT Name
    FROM Emp_DATA
UNION
    SELECT Name
    FROM Customer;

-- 2. Display name of persons who is either Employee or Customer including duplicate data.

    SELECT Name
    FROM Emp_DATA
UNION ALL
    SELECT Name
    FROM Customer;

-- 3. Display name of persons who is both Employee as well as Customer.

    SELECT Name
    FROM Emp_DATA
INTERSECT
    SELECT Name
    FROM Customer;

-- 4. Display name of persons who are Employee but not Customer.

    SELECT Name
    FROM Emp_DATA
EXCEPT
    SELECT Name
    FROM Customer;

-- 5. Display name of persons who are Customer but not Employee.

    SELECT Name
    FROM Customer
EXCEPT
    SELECT Name
    FROM Emp_DATA;


-- Part – C:


-- 1. Perform all the queries of Part-B but display ID and Name columns instead of Name only.

    SELECT *
    FROM Emp_DATA
UNION
    SELECT *
    FROM Customer;

    SELECT *
    FROM Emp_DATA
UNION ALL
    SELECT *
    FROM Customer;

    SELECT *
    FROM Emp_DATA
INTERSECT
    SELECT *
    FROM Customer;

    SELECT *
    FROM Emp_DATA
EXCEPT
    SELECT *
    FROM Customer;

    SELECT *
    FROM Customer
EXCEPT
    SELECT *
    FROM Emp_DATA;
