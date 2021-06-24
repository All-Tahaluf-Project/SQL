select 
E.BusinessEntityID,
E.NationalIDNumber,
E.JobTitle,
EDH.DepartmentID,
EDH.StartDate,
EDH.EndDate
from HumanResources.Employee E 
inner join HumanResources.EmployeeDepartmentHistory EDH
on E.BusinessEntityID = EDH.BusinessEntityID

select 
E1.BusinessEntityID,
E1.NationalIDNumber,
E1.JobTitle,
EDH1.DepartmentID,
EDH1.StartDate,
EDH1.EndDate
from HumanResources.Employee E1
inner join HumanResources.EmployeeDepartmentHistory EDH1
on E1.BusinessEntityID = EDH1.BusinessEntityID

select 
E2.BusinessEntityID,
E2.NationalIDNumber,
E2.JobTitle,
EDH2.DepartmentID,
EDH2.StartDate,
EDH2.EndDate
from HumanResources.Employee E2
inner join HumanResources.EmployeeDepartmentHistory EDH2
on E2.BusinessEntityID = EDH2.BusinessEntityID
