




CREATE PROCEDURE CulDate
    @Date datetime
AS
DECLARE  @tmpdate datetime, @years int, @months int, @days int
SELECT @tmpdate =   @Date
SELECT @years = DATEDIFF(yy, @tmpdate, GETDATE()) - CASE WHEN (MONTH(@Date) > MONTH(GETDATE())) OR (MONTH(@Date) = MONTH(GETDATE()) AND DAY(@Date) > DAY(GETDATE())) THEN 1 ELSE 0 END
SELECT @tmpdate = DATEADD(yy, @years, @tmpdate)
SELECT @months = DATEDIFF(m, @tmpdate, GETDATE()) - CASE WHEN DAY(@Date) > DAY(GETDATE()) THEN 1 ELSE 0 END
SELECT @tmpdate = DATEADD(m, @months, @tmpdate)
SELECT @days = DATEDIFF(d, @tmpdate, GETDATE())
SELECT @years as "year", @months as "Mounth", @days as "day"

--DATEDIFF(year,@Date,GETDATE()) as Year,
--DATEDIFF(MONTH,@Date,GETDATE()) as Month,
--DATEDIFF(DAY,@Date,GETDATE()) as DAY

EXEC CulDate '1996-09-29';
drop proc CulDate;


select DateName(YEAR,DateAdd(YEAR,1, '2020-01-08')) as Datename;
select DateName(DAYOFYEAR,DateAdd(YEAR,1, '2020-05-08')) as Datename;
select DateName(MONTH,DATEADD(MONTH,4,CURRENT_TIMESTAMP)) as Datename;
select DateName(WEEK,'2020-04-17') as Datename;
select DateName(Day,'2020-03-08') as Datename;
select DateName(HOUR,'2020-01-08T14:57:28.4057933+03:00') as Datename;
select DateName(MINUTE,'2020-01-08T14:57:28.4057933+03:00') as Datename;
select DateName(SECOND,'2020-01-08T14:57:28.4057933+03:00') as Datename;
select DateName(MS,'2020-01-08T14:57:28.4057933+03:00') as Datename;



