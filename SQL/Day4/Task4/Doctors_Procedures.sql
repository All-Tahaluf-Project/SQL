create proc GetDoctorBySpeciality
@Speciality varchar(50)
as
select * from Doctors where Speciality = @Speciality

exec GetDoctorBySpeciality 'Physical treatment';
drop proc GetDoctorBySpeciality;


create proc GetDoctorByIdEqual1
AS
SELECT * from Doctors where ID = 1;


exec GetDoctorByIdEqual1;
drop proc GetDoctorByIdMore0;
