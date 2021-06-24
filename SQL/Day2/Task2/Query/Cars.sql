--Select
select * from Cars;
select * from Cars where CustomerId = 0 OR model = 'model1';
select Id,TotalCost from Cars where CustomerId = 0 order by TotalCost;
select * from Cars where CustomerId = 0 OR model = 'model1' order by TotalCost desc;
select * from Cars where CustomerId = 0 OR model = 'model1' and TotalCost between 20000 and 30000 order by TotalCost;
select Min(TotalCost) from Cars;
select max(TotalCost) from Cars;
select avg(TotalCost) from Cars;
select sum(TotalCost) from Cars;
select count(model) from Cars where Status = 'active';
select top 3 * from Cars;
select top 70 percent Id,Status from Cars where Status = 'active';
--Insert
insert into Cars values(3,0,0,'modelnew','active',23900);
insert into Cars values(4,0,0,'modelnew1','active',12000),(5,0,0,'modelnew1','active',1200),(7,0,0,'modelnew1','active',15698);
insert into Cars(Id,CustomerId,EmployeeId,Model,Status,TotalCost) values (8,1,2,'modelnew2','active',10977);
--Update
UPDATE Cars SET CustomerId = 2, Model = 'Update1' WHERE Id = 8;
UPDATE Cars SET CustomerId = 2, Model = 'Update2' WHERE EmployeeId = 0  and model = 'model1' and TotalCost >20000;
UPDATE Cars SET Status = 'unactive', Model = 'Update3' WHERE TotalCost > 20000 and TotalCost < 30000;
--delete
delete top(3) from Cars where TotalCost <= 10000 and Status = 'active';