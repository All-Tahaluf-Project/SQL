select * from Sales.SpecialOffer;

select description ,discountPct,MinQty, ISNULL(MaxQty,55) AS'MAX QUANTITY' 
FROM Sales.SpecialOffer; --If MaxQty = null Make MaxQty = 55

select * from Sales.SpecialOffer
go --After select Go To bBefor Line
create Proc what_DB_is_This
as
select DB_NAME() As ThisDB;

execute what_DB_is_This; --Take Proc Name what_DB_is_This
drop proc what_DB_is_This; --Delete Proc Name what_DB_is_This

select * from Person.BusinessEntity
go
CREATE PROCEDURE CACA
AS
SELECT * FROM Person.BusinessEntity 

EXEC CACA;

CREATE PROCEDURE CACA HRGetAllDid int as 
select * 
from HumanResources.EmployeeDepartmentHistory
where HumanResources.EmployeeDepartmentHistory.DepartmentID = @did;
go 

EXEC HRGetAllDid 15;


CREATE PROCEDURE GetEmp @Department varchar(50) 
as 
select FirstName,LastName,Department from HumanResources.vEmployeeDepartment
where Department = @Department

EXEC GetEmp 'Production';

