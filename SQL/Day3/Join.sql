select * from Employees
join Employees a
on a.Id = Employees.Id
where a.ManageId = 1