--Selectselect * from Departments;
select Name from Departments where Id >1 order by Id;

--Insert
insert into Departments values(3,'Flutter');
--Update
UPDATE Departments SET Name = 'Asp.net MVC5' WHERE Id = 2;
--delete
delete from Departments where Id = 3;