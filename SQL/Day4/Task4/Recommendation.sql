create proc GetRecommendationByDoctorId
@Id int
as
select 
RE.Number as Id,
RE.Date as Date,
RE.Recommendation as Recommendation,

ISNULL(R.Date,'2020-01-01 00:00:00.000') as DateRequests,
ISNULL(R.Request,'Empty') as Request,
ISNULL(R.Image,'Empty') as Image,

ISNULL(P.PatientName,'Empty')as PatientName,
ISNULL(P.Patientdate,'2020-01-01 00:00:00.000') as PatientDate,
ISNULL(P.PatientAddress,'Empty') as PatientAddress,
ISNULL(P.PatientGender,'Empty') as PatientGender,
ISNULL(P.PatientMobile,'Empty') as PatientMobile,

D.Name as DoctorName,
D.Speciality as DoctorSpeciality

from Recommendation RE full join Patient P
on RE.PatientId = P.PatientID
full join Doctors D
on RE.DoctorId = D.ID
full join Requests R
on RE.RequestId = R.Number
where RE.DoctorId = @Id;

exec GetRecommendationByDoctorId 0;
drop proc GetRecommendationByDoctorId;


create proc GetRecommendationByDate
as
select 
RE.Number as Id,
RE.Date as Date,
RE.Recommendation as Recommendation,

ISNULL(R.Date,'2020-01-01 00:00:00.000') as DateRequests,
ISNULL(R.Request,'Empty') as Request,
ISNULL(R.Image,'Empty') as Image,

ISNULL(P.PatientName,'Empty')as PatientName,
ISNULL(P.Patientdate,'2020-01-01 00:00:00.000') as PatientDate,
ISNULL(P.PatientAddress,'Empty') as PatientAddress,
ISNULL(P.PatientGender,'Empty') as PatientGender,
ISNULL(P.PatientMobile,'Empty') as PatientMobile,

D.Name as DoctorName,
D.Speciality as DoctorSpeciality

from Recommendation RE full join Patient P
on RE.PatientId = P.PatientID
full join Doctors D
on RE.DoctorId = D.ID
full join Requests R
on RE.RequestId = R.Number
where RE.Date between '2020-01-01' and '2022-01-01';

exec GetRecommendationByDate;
drop proc GetRecommendationByDate;