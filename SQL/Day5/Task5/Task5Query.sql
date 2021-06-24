create proc GetBillingByAfterMonths
@Date int
as
select 
A.AdmittanceDate as AdmittanceDate,

B.FirstBillDate as FirstBillDate,
B.LastBillDate as LastBillDate,
B.PaidInFullDate as PaidInFullDate,
B.BillAmount as BillAmount,
B.BillingDescrpition as BillingDescrpition,
B.PaidAmount as PaidAmount,

P.FirstName as FirstName,
P.LastName as FirstName,
P.PrimaryPhone as PrimaryPhone,
P.ZipCode as ZipCode,
P.City as City
from Billing B
full join Admittance A on B.AdmittanceID = A.AdmittanceID
full join Patients P on P.PatientID = B.BillingID
where LastBillDate > Dateadd(month,@Date,CURRENT_TIMESTAMP);

exec GetBillingByAfterMonths 7;
drop proc GetBillingByAfterMonths;

create proc GetPetientSymptombyDate
@startDate datetime,
@endDate datetime
as 
select 
* 
from PetientSymptom where InitSymptomDate <= @startdate and FinealSymptomDate >= @endDate;

exec GetPetientSymptombyDate '2020-07-05','2020-07-06';
drop proc GetPetientSymptombyDate;


create proc GetPetientMoreDateYear
@Date datetime,
@Month int
as 
select 
* 
from Patients where DateOfBirth > DATEADD(month,@Month,@Date);

exec GetPetientMoreDateYear '1980-07-06',1;
drop proc GetPetientMoreDateYear;


create proc GetPetientMedicineByDatediffUseMonth
as 
select 
Datediff(MONTH,AdminDate,CURRENT_TIMESTAMP) as Date
from PetientMedicine where AdminDate > '2020-01-01';

exec GetPetientMedicineByDatediffUseMonth;
drop proc GetPetientMedicineByDatediffUseMonth;

create proc GetPetientUseBetween
as 
select 
PatientID as Id,
DATENAME(DAY,DateOfBirth) as DAY,
DATENAME(month,DateOfBirth) as month,
DATENAME(Year,DateOfBirth) as Year,
FirstName as FirstName,
LastName as LastName,
PrimaryPhone as PrimaryPhone,
City as City,
Gender as Gender,
StreetAddress as StreetAddress,
Status as Status,
ZipCode as ZipCode
from Patients where DateOfBirth between '1980-01-01' and '1990-01-01';

exec GetPetientUseBetween;
drop proc GetPetientUseBetween;

create proc GetAdmittanceInSomeMonth
as 
select 
*
from Admittance where DATENAME(MONTH,AdmittanceDate) = 'May';

exec GetAdmittanceInSomeMonth;
drop proc GetAdmittanceInSomeMonth;
