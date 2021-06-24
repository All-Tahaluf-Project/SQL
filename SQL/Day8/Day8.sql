select * from HumanResources.Employee;
select * from Person.Person;

select 
P.FirstName,
P.LastName,
case e.Gender
When 'F' then 'Female'
when 'M' then 'Male'
else 'Unknow'
end as GenderDescription
from HumanResources.Employee as e 
Join Person.Person as p on e.BusinessEntityID = P.BusinessEntityID;

select 
P.FirstName,
P.LastName,
case e.MaritalStatus
When 'S' then 'Single'
when 'M' then 'Marriage'
else 'Unknow'
end as [Marital Status],
case e.Gender
When 'F' then 'Female'
when 'M' then 'Male'
else 'Unknow'
end as [Gender]
from HumanResources.Employee as e 
Join Person.Person as p on e.BusinessEntityID = P.BusinessEntityID
where e.Gender = 'F' and e.MaritalStatus = 'M'
