create proc GetPatientByDate
@Start datetime,
@End datetime
as
select * from Patient where Patientdate BETWEEN @Start and @End

exec GetPatientByDate '1970-01-01' ,'2021-01-01';
drop proc GetPatientByDate;

create proc GetPatientByMobileZain
AS
SELECT * from Patient where PatientMobile like '079%';


exec GetPatientByMobileZain;
drop proc GetPatientByMobileZain;