create proc GetRequestsByPatientId
@Id int
as
select 
ISNULL(R.Number,0) as Number,
ISNULL(R.Date,'2020-01-01 00:00:00.000') as Date,
ISNULL(R.Request,'Empty') as Request,
ISNULL(R.Image,'Empty') as Image,

ISNULL(P.PatientName,'Empty')as Name,
ISNULL(P.Patientdate,'2020-01-01 00:00:00.000') as PatientDate,
ISNULL(P.PatientAddress,'Empty') as PatientAddress,
ISNULL(P.PatientGender,'Empty') as PatientGender,
ISNULL(P.PatientMobile,'Empty') as PatientMobile,

D.Name as DoctorName,
D.Speciality as DoctorSpeciality

from Requests R full join Patient P
on R.PatientId = P.PatientID
full join Doctors D
on R.DoctorId = D.ID
where P.PatientID = @Id;

exec GetRequestsByPatientId 3;
drop proc GetRequestsByPatientId;


create proc GetRequestsByDectorId
as
select 
ISNULL(R.Number,0) as Number,
ISNULL(R.Date,'2020-01-01 00:00:00.000') as Date,
ISNULL(R.Request,'Empty') as Request,
ISNULL(R.Image,'Empty') as Image,

ISNULL(P.PatientName,'Empty')as Name,
ISNULL(P.Patientdate,'2020-01-01 00:00:00.000') as PatientDate,
ISNULL(P.PatientAddress,'Empty') as PatientAddress,
ISNULL(P.PatientGender,'Empty') as PatientGender,
ISNULL(P.PatientMobile,'Empty') as PatientMobile,

D.Name as DoctorName,
D.Speciality as DoctorSpeciality

from Requests R full join Patient P
on R.PatientId = P.PatientID
full join Doctors D
on R.DoctorId = D.ID
where DoctorId = 2;

exec GetRequestsByDectorId;
drop proc GetRequestsByDectorId;

