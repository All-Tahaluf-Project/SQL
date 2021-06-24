select
ST_Id as [Id],
ST_Name as [Full Name],
PROF_ID as [PROF ID],
P.Prof_FName + ' ' + P.Prof_LName as [PROF Full Name],
GRADE as [GRADE],
Birthday as Birthday,
case 
when DATEDIFF(year,s.Birthday,GETDATE()) <= 17 then 'Teenage : ' + cast(DATEDIFF(year,s.Birthday,GETDATE()) as varchar(20))
else 'Adults : ' + cast(DATEDIFF(year,s.Birthday,GETDATE()) as varchar(20)) end as Age
from Students as s join Professors as p on s.PROF_Id = p.Id;
go

create proc GetAges
@Date as datetime
as 
select 
ST_Id as [Id],
ST_Name as [Full Name],
PROF_ID as [PROF ID],
P.Prof_FName + ' ' + P.Prof_LName as [PROF Full Name],
GRADE as [GRADE],
Birthday as Birthday,
case 
when DATEDIFF(year,s.Birthday,@Date) <= 17 then 'Teenage : ' + cast(DATEDIFF(year,s.Birthday,@Date) as varchar(20))
else 'Adults : ' + cast(DATEDIFF(year,s.Birthday,@Date) as varchar(3)) end as Age
from Students as s join Professors as p on s.PROF_Id = p.Id;

exec GetAges '2011-12-12';
drop proc GetAges;