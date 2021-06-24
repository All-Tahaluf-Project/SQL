--Select
select * from Employees;
select * from Employees where GenderID = 0;
select Id,Salary from Employees where Salary between 500 and 1000 order by HireDate;
select * from Employees where HireDate between '2020-1-1' and '2022-1-1' OR Salary between 500 and 1000 order by Salary desc;
select * from Employees where DepartmentId = 0 and Salary between 500 and 1000 order by HireDate;
select Min(Salary) from Employees;
select max(Salary) from Employees;
select avg(Salary) from Employees;
select sum(Salary) from Employees;
select count(Salary) from Employees where HireDate between '2020-1-1' and '2022-1-1';
select top 3 * from Employees;
SELECT TOP 70 percent Id,FName,LName,PhoneNumber FROM Employees WHERE ManageId = 0;
--Insert
insert into Employees values(4,0,0,'modelnew1','active',12000),(5,0,0,'modelnew1','active',1200),(7,0,0,'modelnew1','active',15698);
--Update
UPDATE Employees SET ManageId = 1 WHERE Id = 1;
UPDATE Employees SET Salary = 900 WHERE Salary <=800  and HireDate between '2020-1-1' and '2022-1-1';
--delete
delete from Employees where Id = 2;