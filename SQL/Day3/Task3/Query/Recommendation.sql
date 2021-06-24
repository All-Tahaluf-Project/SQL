Insert Into Recommendation 
values(0,'2020-08-11','Recommendation0',0,0,0)
,(1,'2020-08-11','Recommendation0',1,2,1)
,(2,'2020-08-11','Recommendation0',2,1,2)
,(3,'2020-08-11','Recommendation0',3,4,3)
,(4,'2020-08-11','Recommendation0',4,4,2)

select * from Recommendation;

select P.PatientID,P.PatientName,P.PatientAddress,P.PatientMobile,R.Date,R.Recommendation from Recommendation R 
Right Join Patient P 
on P.PatientID = R.RequestId

select * from Recommendation R 
Full Join Patient P 
on P.PatientID = R.RequestId
Full Join Doctors D
on D.ID = R.DoctorId
Full Join Requests RE 
on RE.Number = R.RequestId

select *
from Recommendation R 
inner join Patient P
on R.PatientId = P.PatientID
