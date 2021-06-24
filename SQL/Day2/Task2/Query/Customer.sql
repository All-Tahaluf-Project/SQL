--Select
select * from Customer;
select * from Customer where Not( Email like 'sma%' And PhoneNumber like '079%');
select Id,PhoneNumber from Customer where PhoneNumber like '%2_' order by PhoneNumber;
select * from Customer where Email like '%gmail%' OR PerformanceContact = '' order by PhoneNumber desc;
select top 8 * from Customer;
SELECT TOP 20 percent Id,FName,LName FROM Customer WHERE PerformanceContact = 'M';
--Insert
insert into Customer values(3,'Asad','OSama','Email@gmail.com','0775634978','M');
insert into Customer values(4,'Asad','OSama','Email@gmail.com','0775634978','M'),(5,'Ahmad','Oama','Ahmad265@gmail.com','07877653345','M');
insert into Customer(Id,FName,LName,Email,PhoneNumber,PerformanceContact) values (7,'FName','LName','Email@gmail.com','0000000000','M');
--Update
UPDATE Customer SET PerformanceContact = 'P' WHERE PerformanceContact = 'M';
UPDATE Customer SET PhoneNumber = '0', Email = 'Email' WHERE PhoneNumber like '079%'  and Email like 'sma%';
--delete
delete from Cars where CustomerId = 2;
delete from Customer where Id = 2;