select * from STU_INFO
select * from RESULT
select * from EMPLOYEE_MASTER

--part-A

--1. Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO
cross join result
--2. Perform inner join on Student and Result tables.
select * from STU_INFO
inner join result
on STU_INFO.Rno= RESULT.rno
--3. Perform the left outer join on Student and Result tables.
select *from STU_INFO
left outer join result
on STU_INFO.Rno= result.rno
--4. Perform the right outer join on Student and Result tables.
select *from STU_INFO
right outer join result
on STU_INFO.Rno= result.rno

--5. Perform the full outer join on Student and Result tables. 
select *from STU_INFO
full outer join result
on STU_INFO.Rno= result.rno
--6. Display Rno, Name, Branch and SPI of all students.
select STU_INFO.Rno, name, branch, spi
from STU_INFO
inner join result
on STU_INFO.Rno=result.rno
--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select STU_INFO.Rno, name, branch, spi
from STU_INFO
inner join result
on STU_INFO.Rno=result.rno
where Branch='CE'
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select STU_INFO.Rno, name, branch, spi
from STU_INFO
inner join result
on STU_INFO.Rno=result.rno
where branch <>'EC'
--9. Display average result of each branch.
select branch, avg(spi)
from STU_INFO
inner join result
on STU_INFO.rno= result.rno
group by branch
--10. Display average result of CE and ME branch.
select branch, avg(spi)
from STU_INFO
inner join result
on STU_INFO.rno= result.rno
where branch in ('CE', 'ME')
group by branch

--part-B
--1. Display average result of each branch and sort them in ascending order by SPI.
select branch, avg(spi) from
STU_INFO inner join result
on STU_INFO.rno= result.rno
group by branch
order by avg(spi)
--2. Display highest SPI from each branch and sort them in descending order.

select branch, max(spi) from
STU_INFO inner join result
on STU_INFO.rno= result.rno
group by branch
order by max(spi) desc

--part-c
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select E1.name as employee, E2.name as manager
from EMPLOYEE_MASTER E1 inner join EMPLOYEE_MASTER E2
on E1.EmployeeNo= E2.ManagerNo
