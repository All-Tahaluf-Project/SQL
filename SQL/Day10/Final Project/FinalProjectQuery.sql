
--Add Delivry
create Proc AddEmployee
@IdEmployee as int,
@FName as varchar(50),
@MName as varchar(50),
@LName as varchar(50),
@Email as varchar(50),
@PhoenNumber as varchar(12),
@IdDepartment as int,
@Job_Id as varchar(50),
@Salary as decimal(18,0),
@Location as varchar(50),
@Gender as tinyint
as
begin try
INSERT INTO Employee_Table(Id,FName, MName,LName,Status,Email,PhoenNumber,IdDepartment,Job_Id,Salary,StartDate,EndDate,
Location,Gender)
VALUES (@IdEmployee, @FName, @MName,@LName,1,@Email,@PhoenNumber,@IdDepartment
,@Job_Id,@Salary,GETDATE(),null,@Location,@Gender);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch


exec AddEmployee 
@IdEmployee= 5,@FName='Ahmad',@MName = 'Mahmood',@LName ='Osama',@Email='Ahmad123@gmail.com',@PhoenNumber='0777788299',@IdDepartment=1,
@Job_Id='Delivry_0004_Ahmad_Mhmood_Osama',@Salary=900,@Location='Amman',@Gender=0;
drop proc AddEmployee;

create Proc AddUser
@Id as int,
@UserName as Varchar(50),
@Password as Varchar(50),

@IdEmployee as int
as
begin try
INSERT INTO Users_Table(Id,UserName,Password,Block,IdEmplyee)
VALUES (@Id,@UserName,@Password,0,@IdEmployee);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddUser @Id= 4,@UserName='Ahmad',@Password='Musa123',@IdEmployee = 4;
drop proc AddUser;

create Proc AddRoleUser
@IdRoleList as int,
@IdUser as int,
@IdRole as int
as
begin try
INSERT INTO UserRoles_Table(Id,IdUser,IdRole)
VALUES (@IdRoleList,@IdUser,@IdRole);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddRoleUser @IdRoleList=4,@IdUser= 4,@IdRole=1;
drop proc AddRoleUser;

create Proc AddDelivry
@Id as int,
@IdUser as int,
@IdEmployee as int
as
begin try
INSERT INTO Delivery_Table(Id,IdUser,Status)
VALUES (@Id,@IdUser,0);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddDelivry 5,4,4;
drop proc AddDelivry;

create Proc AddChef
@Id as int,
@IdUser as int,
@IdCuisines as int
as
begin try
INSERT INTO Chef_Table(Id,IdUser,IdCuisines)
VALUES (@Id,@IdUser,0);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddChef 5,4,4;
drop proc AddChef;

create Proc AddHR
@Id as int,
@IdEmployee as int
as
begin try
INSERT INTO HR_Table(Id,IdEmployee)
VALUES (@Id,@IdEmployee);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddHR 5,4;
drop proc AddHR;

create Proc AddCallCenter
@Id as int,
@IdUser as int
as
begin try
INSERT INTO CallCenter_Table(Id,IdUser)
VALUES (@Id,@IdUser);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddCallCenter 5,4;
drop proc AddCallCenter;

create Proc AddPurchase
@Id as int,
@IdUser as int
as
begin try
INSERT INTO Purchase_Table(Id,IdUser)
VALUES (@Id,@IdUser);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddPurchase 5,4;
drop proc AddPurchase;



--CRUD For Meal
create Proc CreateMeal
@Id as int,
@Name as varchar(50),
@Status as tinyint,
@IdType as int,
@IdCuisines as int,
@Price as decimal(18,5),
@Descrption as varchar(5000),
@PriceCost as decimal(18,5)
as
begin try
INSERT INTO Meals_Table(Id,Name,Status,IdType,IdCuisines,Descrption,Price,PriceCost)
VALUES (@Id,@Name,@Status,@IdType,@IdCuisines,@Descrption,@Price,@PriceCost);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec CreateMeal @Id=5,@Name= 'Creamy rice & chicken bake ',@Status=1,@IdType=4,@IdCuisines = 1,@Descrption='Sweet'
,@Price = 10,@PriceCost = 8;
drop proc CreateMeal;

create Proc ReadByTypeMeal
@IdType as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Descrption as Descrption,
M.Price as Price,
M.PriceCost as PriceCost,
MT.Title as Type,
C.Name as [Name Cuisines]
from Meals_Table as M join MealTypes as MT on M.IdType = MT.Id join Cuisines_Table as C on M.IdCuisines = C.Id
where IdType = @IdType
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec ReadByTypeMeal @IdType=1;
drop proc ReadByTypeMeal;

create Proc ReadByIdMeal
@Id as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Descrption as Descrption,
M.Price as Price,
M.PriceCost as PriceCost,
MT.Title as Type,
C.Name as [Name Cuisines]
from Meals_Table as M join MealTypes as MT on M.IdType = MT.Id join Cuisines_Table as C on M.IdCuisines = C.Id
where M.Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec ReadByIdMeal @Id=2;
drop proc ReadByIdMeal;

create Proc UpdateMeal
@Id as int,
@Name as varchar(50),
@Status as tinyint,
@IdType as int,
@IdCuisines as int,
@Price as decimal(18,5),
@Descrption as varchar(5000),
@PriceCost as decimal(18,5)
as
begin try
Update Meals_Table set Name = @Name , Status = @Status ,IdType = @IdType,IdCuisines = @IdCuisines,Descrption = @Descrption
,Price = @Price,PriceCost = @PriceCost where Id = @Id;
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec UpdateMeal @Id=4,@Name= 'Creamy rice & chicken bake',@Status=1,@IdType=4,@IdCuisines=2,@Descrption = 'Sweet'
,@Price = 10,@PriceCost = 7;
drop proc UpdateMeal;

create Proc DeleteMeal
@Id as int
as
begin try
Delete Meals_Table where Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec DeleteMeal @Id=4;
drop proc DeleteMeal;



--CRUD For Offers
create Proc CreateOffers
@Id as int,
@IdMeal as int,
@Offer as decimal,
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
INSERT INTO Offers
VALUES (@Id,@IdMeal,@Offer,@StartDate,@EndDate);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec CreateOffers @Id=4,@IdMeal= 4,@Offer=1.50,@StartDate='2020-05-25',@EndDate='2020-05-27';
drop proc CreateOffers;

create Proc ReadByMealIdOffers
@IdMeal as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Price as Price,
O.Offer as Offer,
O.StartDate as StartDate,
O.EndDate as EndDate
from Offers as O join Meals_Table as M on M.Id = O.IdMeal where IdMeal = @IdMeal
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec ReadByMealIdOffers @IdMeal=3;
drop proc ReadByMealIdOffers;

create Proc ReadByDateOffers
@StartDate as DateTime,
@EndDate as DateTime
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
O.Offer as Offer,
O.StartDate as StartDate,
O.EndDate as EndDate
from Offers as O join Meals_Table as M on M.Id = O.IdMeal where 
StartDate between @StartDate and @EndDate
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec ReadByDateOffers '2020-01-01','2020-06-01';
drop proc ReadByDateOffers;

create Proc UpdateOffers
@Id as int,
@IdMeal as int,
@Offer as decimal,
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
Update Offers set IdMeal = @IdMeal , Offer = @Offer ,StartDate = @StartDate,EndDate = @EndDate where Id = @Id;
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec UpdateOffers @Id=4,@IdMeal = 1,@Offer=1.2,@StartDate='2020-05-01',@EndDate='2020-06-01';
drop proc UpdateOffers;

create Proc DeleteOffers
@Id as int
as
begin try
Delete Offers where Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec DeleteOffers @Id=4;
drop proc DeleteOffers;


create Proc DisplayingMeals
@IdMeal as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Status,
M.Descrption as Descrption,
M.Price as Price,
M.PriceCost as PriceCost,
T.Title as Type,
O.Offer as Offer,
O.StartDate as [Start Date Offer],
O.EndDate as [End Date Offer],
C.Name as [Cuisines Name]
from Meals_Table as M 
join Offers as O on M.Id = O.IdMeal
join MealTypes as T on M.IdType = T.Id
join Cuisines_Table as C on M.IdCuisines = C.Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec DisplayingMeals @IdMeal=0;
drop proc DisplayingMeals;


create Proc LogIn
@UserName as varchar(50),
@Password as varchar(50)
as
begin try
select 
U.UserName as UserName,
U.Block as Block,
E.Email as Email,
E.EndDate as EndDate,
E.FName as FName,
E.Gender as Gender,
E.Job_Id as Job_Id,
E.LName as LName,
E.Location as Location,
E.MName as MName,
E.PhoenNumber as PhoenNumber,
E.Salary as Salary,
E.StartDate as StartDate,
E.Status as Status,
D.Name as Department
from Users_Table as U join Employee_Table as E on U.IdEmplyee = E.Id 
join Departments as D on E.IdDepartment = D.Id
where UserName = @UserName and Password = @Password
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
exec LogIn 'Osama','Osama123';
drop proc LogIn;

create Proc AddCustomer
@Id as int,
@FullName as varchar(100),
@Latitude as float,
@Longitude as float,
@PhoneNumber as varchar(13),
@AddressDescription as varchar(1000)
as
begin try
INSERT INTO Customers_Table(Id,FullName,Latitude,Longitude,PhoneNumber,AddressDescription)
VALUES (@Id,@FullName,@Latitude,@Longitude,@PhoneNumber,@AddressDescription);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddCustomer 4,'Osama Kaseb Odetallah Salem' ,35.9291693483543 ,31.950475178926038 ,'0796662314'
,'Amman-Tabarbour-Streat:2-Boulding:14-Floor:1-Door:2';
drop proc AddCustomer;

create Proc AddSales
@Id as int,
@Number as int,
@Price as decimal(18,5),
@PriceCost as decimal(18,5),
@IdMeal as float,
@IdCustomer as varchar(1000)
as
begin try
INSERT INTO Sales_Table(Id,Number,Price,IdMeal,IdCustomer,PriceCost)
VALUES (@Id,@Number,@Price,@IdMeal,@IdCustomer);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddSales 4,4,10,4,4;
drop proc AddSales;

create Proc AddOrder
@Id as int,
@IdSales as int,
@IdDelivery as int,
@Status as float
as
begin try
INSERT INTO Orders_Table(Id,IdSales,IdDelivery,Status)
VALUES (@Id,@IdSales,@IdDelivery,@Status);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddOrder 7,1,1,3;
drop proc AddOrder;

--0 Waiting , 1 InWay ,2 Dropped ,3 Done ,4 Cancel
create Proc ReportsForExtractingTheNetProfit
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
select 
Sum((S.Price - S.PriceCost) * S.Number)
from Orders_Table as O join Sales_Table as S on O.IdSales = S.Id where O.Status = 3 or O.Status = 4 
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec ReportsForExtractingTheNetProfit '2021-01-01', '2022-01-01';
drop proc ReportsForExtractingTheNetProfit;


create Proc AddDeliveryLocations
@Id as int,
@IdDelivery as int,
@Latitude as float,
@Longitude as float
as
begin try
INSERT INTO Delivery_Locations(Id,IdDelivery,Latitude,Longitude,Date)
VALUES (@Id,@IdDelivery,@Latitude,@Longitude,GETDATE());
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch

exec AddDeliveryLocations 4,4,35.89792697988408,31.918133929655777;
drop proc AddDeliveryLocations;


--CREATE TABLE Delivery_Locations (
--    Id int NOT NULL,
--    IdDelivery int NOT NULL,
--    Latitude float NOT NULL,
--	Longitude float NOT NULL,
--	Date datetime default GetDate()
--    PRIMARY KEY (Id)
--);
