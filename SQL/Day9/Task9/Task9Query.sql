select * from Students;

create proc DetailsStudent
@Id as int 
as 
begin try
select 
S.ID as Id,
S.FirstName as FirstName,
S.LastName as LastName,
S.DateOfBirth as DateOfBirth,
S.Age as Age,
S.Email as Email,
G.Tittle as Tittle
from Students as S 
join Genders G on S.GenderID = G.ID
where S.ID = @Id;
end TRY
begin catch
SELECT 'Student Not Found' AS [Data Not Found];
end catch

exec DetailsStudent 1;
drop proc DetailsStudent;


create proc StudentCourseINFO
@Id as int 
as 
begin try
select
Sum(SC.Mark) as Sum,
COUNT(SC.Mark) as Count,
avg(SC.Mark) as Count
from Scores as SC join StudentCourse as S on SC.StudentCourseID = @Id;
end TRY
begin catch
SELECT ERROR_LINE()  AS [ERROR LINE],
ERROR_MESSAGE() AS [ERROR MESSAGE],
ERROR_PROCEDURE()  AS [ERROR PROCEDURE]
end catch

exec StudentCourseINFO 1;
drop proc StudentCourseINFO;

create proc NumberCountriesToCities
as 
begin try
select
Count(Country) / Count(City)
from Addresses;
end TRY
begin catch
SELECT ERROR_LINE()  AS [ERROR LINE],
ERROR_MESSAGE() AS [ERROR MESSAGE],
ERROR_PROCEDURE()  AS [ERROR PROCEDURE]
end catch

exec NumberCountriesToCities;
drop proc NumberCountriesToCities;

create proc StudentAVGByIdStudent
@Id as int
as 
begin try
select
Sum(SC.Mark)/Count(ST.CourseID) as AVG 
from StudentCourse as ST join Scores as SC on SC.StudentCourseID = ST.ID
where ST.CourseID = @Id;
end TRY
begin catch
SELECT ERROR_LINE()  AS [ERROR LINE],
ERROR_MESSAGE() AS [ERROR MESSAGE],
ERROR_PROCEDURE()  AS [ERROR PROCEDURE]
end catch

exec StudentAVGByIdStudent 2;
drop proc StudentAVGByIdStudent;


create proc GetStudentBetweenTowBirthday
@StartDate as Date,
@EndDate as Date
as 
begin try
select
S.ID as Id,
S.FirstName as FirstName,
S.LastName as LastName,
S.DateOfBirth as DateOfBirth,
S.Age as Age,
S.Email as Email,
G.Tittle as Tittle
from Students as S join Genders as G on S.GenderID = G.ID
where S.DateOfBirth between @StartDate and @EndDate;
end TRY
begin catch
SELECT ERROR_LINE()  AS [ERROR LINE],
ERROR_MESSAGE() AS [ERROR MESSAGE],
ERROR_PROCEDURE()  AS [ERROR PROCEDURE]
end catch

exec GetStudentBetweenTowBirthday '1980-01-01','2020-01-01';
drop proc GetStudentBetweenTowBirthday;