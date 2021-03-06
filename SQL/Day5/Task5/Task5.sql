USE [master]
GO
/****** Object:  Database [Task5]    Script Date: 30/04/2021 06:30:05 م ******/
CREATE DATABASE [Task5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task5] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task5] SET  MULTI_USER 
GO
ALTER DATABASE [Task5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task5] SET QUERY_STORE = OFF
GO
USE [Task5]
GO
/****** Object:  Table [dbo].[Admittance]    Script Date: 30/04/2021 06:30:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admittance](
	[AdmittanceID] [int] NOT NULL,
	[AdmittanceDate] [datetime] NOT NULL,
	[PatientID] [int] NOT NULL,
 CONSTRAINT [PK_Admittance] PRIMARY KEY CLUSTERED 
(
	[AdmittanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing](
	[BillingID] [int] NOT NULL,
	[AdmittanceID] [int] NOT NULL,
	[FirstBillDate] [datetime] NOT NULL,
	[LastBillDate] [datetime] NOT NULL,
	[PaidInFullDate] [bit] NOT NULL,
	[BillAmount] [decimal](18, 0) NOT NULL,
	[BillingDescrpition] [varchar](50) NOT NULL,
	[PatientID] [int] NOT NULL,
	[PaidAmount] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Injuries]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Injuries](
	[InjuryID] [int] NOT NULL,
	[InjuryDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Injuries] PRIMARY KEY CLUSTERED 
(
	[InjuryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[MedicineID] [int] NOT NULL,
	[MedicineName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medicines] PRIMARY KEY CLUSTERED 
(
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientAdmittanceInjury]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientAdmittanceInjury](
	[AdmittanceID] [int] NOT NULL,
	[InjuryID] [int] NOT NULL,
	[InitialDiagnosis] [varchar](50) NOT NULL,
	[FinalDiagnosis] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientID] [int] NOT NULL,
	[FirstName] [varchar](15) NOT NULL,
	[MidIntial] [varchar](15) NOT NULL,
	[LastName] [varchar](15) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[StreetAddress] [varchar](50) NOT NULL,
	[City] [varchar](12) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[ZipCode] [varchar](5) NOT NULL,
	[PrimaryPhone] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetientMedicine]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetientMedicine](
	[PatientID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
	[AdminDate] [datetime] NOT NULL,
	[Dosage_ml] [float] NOT NULL,
	[Effectiveness] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetientSymptom]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetientSymptom](
	[PetientID] [int] NOT NULL,
	[SymptomID] [int] NOT NULL,
	[InitSymptomDate] [datetime] NOT NULL,
	[FinealSymptomDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Symptoms]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Symptoms](
	[SymptomID] [int] NOT NULL,
	[SymDesc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Symptoms] PRIMARY KEY CLUSTERED 
(
	[SymptomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admittance] ([AdmittanceID], [AdmittanceDate], [PatientID]) VALUES (0, CAST(N'2020-05-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Admittance] ([AdmittanceID], [AdmittanceDate], [PatientID]) VALUES (1, CAST(N'2020-12-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Admittance] ([AdmittanceID], [AdmittanceDate], [PatientID]) VALUES (2, CAST(N'2020-07-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Billing] ([BillingID], [AdmittanceID], [FirstBillDate], [LastBillDate], [PaidInFullDate], [BillAmount], [BillingDescrpition], [PatientID], [PaidAmount]) VALUES (0, 0, CAST(N'2020-07-01T00:00:00.000' AS DateTime), CAST(N'2020-08-01T00:00:00.000' AS DateTime), 1, CAST(250 AS Decimal(18, 0)), N'D0', 0, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Billing] ([BillingID], [AdmittanceID], [FirstBillDate], [LastBillDate], [PaidInFullDate], [BillAmount], [BillingDescrpition], [PatientID], [PaidAmount]) VALUES (1, 0, CAST(N'2019-09-16T00:00:00.000' AS DateTime), CAST(N'2020-01-06T00:00:00.000' AS DateTime), 1, CAST(10500 AS Decimal(18, 0)), N'D1', 1, CAST(10500 AS Decimal(18, 0)))
INSERT [dbo].[Billing] ([BillingID], [AdmittanceID], [FirstBillDate], [LastBillDate], [PaidInFullDate], [BillAmount], [BillingDescrpition], [PatientID], [PaidAmount]) VALUES (2, 0, CAST(N'2020-12-01T00:00:00.000' AS DateTime), CAST(N'2022-01-08T00:00:00.000' AS DateTime), 0, CAST(13000 AS Decimal(18, 0)), N'D1', 2, CAST(13000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Injuries] ([InjuryID], [InjuryDescription]) VALUES (0, N'Hit the head')
INSERT [dbo].[Injuries] ([InjuryID], [InjuryDescription]) VALUES (1, N'tooth decay')
INSERT [dbo].[Injuries] ([InjuryID], [InjuryDescription]) VALUES (2, N'Old Age')
GO
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName]) VALUES (0, N'Teeth')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName]) VALUES (1, N'Bones')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName]) VALUES (2, N'Rain')
GO
INSERT [dbo].[PatientAdmittanceInjury] ([AdmittanceID], [InjuryID], [InitialDiagnosis], [FinalDiagnosis]) VALUES (0, 0, N'InitialDiagnosis1', N'FinalDiagnosis1')
INSERT [dbo].[PatientAdmittanceInjury] ([AdmittanceID], [InjuryID], [InitialDiagnosis], [FinalDiagnosis]) VALUES (1, 1, N'InitialDiagnosis2', N'FinalDiagnosis2')
INSERT [dbo].[PatientAdmittanceInjury] ([AdmittanceID], [InjuryID], [InitialDiagnosis], [FinalDiagnosis]) VALUES (2, 2, N'InitialDiagnosis3', N'FinalDiagnosis3')
GO
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MidIntial], [LastName], [Gender], [DateOfBirth], [StreetAddress], [City], [Status], [ZipCode], [PrimaryPhone]) VALUES (0, N'Osama', N'Kaseb', N'AL-Daja', N'Male', CAST(N'1996-09-29T00:00:00.000' AS DateTime), N'Marka-Mohammad AbuArkob', N'Amman', N'Healing', N'11134', N'0795638279')
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MidIntial], [LastName], [Gender], [DateOfBirth], [StreetAddress], [City], [Status], [ZipCode], [PrimaryPhone]) VALUES (1, N'Name1', N'MidName1', N'LastName1', N'Male', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'StreetAddress1', N'Ajloun', N'Healing', N'Code1', N'0000000000')
INSERT [dbo].[Patients] ([PatientID], [FirstName], [MidIntial], [LastName], [Gender], [DateOfBirth], [StreetAddress], [City], [Status], [ZipCode], [PrimaryPhone]) VALUES (2, N'Name2', N'MidName2', N'LastName2', N'Female', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'StreetAddress2', N'Irbid', N'Healing', N'Code2', N'1111111111')
GO
INSERT [dbo].[PetientMedicine] ([PatientID], [MedicineID], [AdminDate], [Dosage_ml], [Effectiveness]) VALUES (0, 0, CAST(N'2020-07-02T00:00:00.000' AS DateTime), 30, N'good')
INSERT [dbo].[PetientMedicine] ([PatientID], [MedicineID], [AdminDate], [Dosage_ml], [Effectiveness]) VALUES (1, 1, CAST(N'2020-01-06T00:00:00.000' AS DateTime), 10, N'bad')
INSERT [dbo].[PetientMedicine] ([PatientID], [MedicineID], [AdminDate], [Dosage_ml], [Effectiveness]) VALUES (2, 2, CAST(N'2020-06-19T00:00:00.000' AS DateTime), 0, N'good')
GO
INSERT [dbo].[PetientSymptom] ([PetientID], [SymptomID], [InitSymptomDate], [FinealSymptomDate]) VALUES (0, 0, CAST(N'2020-07-05T00:00:00.000' AS DateTime), CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[PetientSymptom] ([PetientID], [SymptomID], [InitSymptomDate], [FinealSymptomDate]) VALUES (1, 1, CAST(N'2020-03-26T00:00:00.000' AS DateTime), CAST(N'2020-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PetientSymptom] ([PetientID], [SymptomID], [InitSymptomDate], [FinealSymptomDate]) VALUES (2, 2, CAST(N'2020-03-26T00:00:00.000' AS DateTime), CAST(N'2020-03-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Symptoms] ([SymptomID], [SymDesc]) VALUES (0, N'Headache')
INSERT [dbo].[Symptoms] ([SymptomID], [SymDesc]) VALUES (1, N'Toothache')
INSERT [dbo].[Symptoms] ([SymptomID], [SymDesc]) VALUES (2, N'Joints Pain')
GO
ALTER TABLE [dbo].[Admittance]  WITH CHECK ADD  CONSTRAINT [FK_Admittance_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[Admittance] CHECK CONSTRAINT [FK_Admittance_Patients]
GO
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_Billing_Admittance] FOREIGN KEY([AdmittanceID])
REFERENCES [dbo].[Admittance] ([AdmittanceID])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_Billing_Admittance]
GO
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_Billing_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_Billing_Patients]
GO
ALTER TABLE [dbo].[PatientAdmittanceInjury]  WITH CHECK ADD  CONSTRAINT [FK_PatientAdmittanceInjury_Admittance] FOREIGN KEY([AdmittanceID])
REFERENCES [dbo].[Admittance] ([AdmittanceID])
GO
ALTER TABLE [dbo].[PatientAdmittanceInjury] CHECK CONSTRAINT [FK_PatientAdmittanceInjury_Admittance]
GO
ALTER TABLE [dbo].[PatientAdmittanceInjury]  WITH CHECK ADD  CONSTRAINT [FK_PatientAdmittanceInjury_Injuries] FOREIGN KEY([InjuryID])
REFERENCES [dbo].[Injuries] ([InjuryID])
GO
ALTER TABLE [dbo].[PatientAdmittanceInjury] CHECK CONSTRAINT [FK_PatientAdmittanceInjury_Injuries]
GO
ALTER TABLE [dbo].[PetientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PetientMedicine_Medicines] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[Medicines] ([MedicineID])
GO
ALTER TABLE [dbo].[PetientMedicine] CHECK CONSTRAINT [FK_PetientMedicine_Medicines]
GO
ALTER TABLE [dbo].[PetientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PetientMedicine_Medicines1] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[Medicines] ([MedicineID])
GO
ALTER TABLE [dbo].[PetientMedicine] CHECK CONSTRAINT [FK_PetientMedicine_Medicines1]
GO
ALTER TABLE [dbo].[PetientMedicine]  WITH CHECK ADD  CONSTRAINT [FK_PetientMedicine_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[PetientMedicine] CHECK CONSTRAINT [FK_PetientMedicine_Patients]
GO
ALTER TABLE [dbo].[PetientSymptom]  WITH CHECK ADD  CONSTRAINT [FK_PetientSymptom_Patients1] FOREIGN KEY([SymptomID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[PetientSymptom] CHECK CONSTRAINT [FK_PetientSymptom_Patients1]
GO
ALTER TABLE [dbo].[PetientSymptom]  WITH CHECK ADD  CONSTRAINT [FK_PetientSymptom_Symptoms] FOREIGN KEY([SymptomID])
REFERENCES [dbo].[Symptoms] ([SymptomID])
GO
ALTER TABLE [dbo].[PetientSymptom] CHECK CONSTRAINT [FK_PetientSymptom_Symptoms]
GO
/****** Object:  StoredProcedure [dbo].[GetAdmittanceInSomeMonth]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAdmittanceInSomeMonth]
as 
select 
*
from Admittance where DATENAME(MONTH,AdmittanceDate) = 'May';
GO
/****** Object:  StoredProcedure [dbo].[GetBillingByAfterMonths]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBillingByAfterMonths]
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
GO
/****** Object:  StoredProcedure [dbo].[GetPetientMedicineByDatediffUseMonth]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPetientMedicineByDatediffUseMonth]
as 
select 
Datediff(MONTH,AdminDate,CURRENT_TIMESTAMP) as Date
from PetientMedicine where AdminDate > '2020-01-01';
GO
/****** Object:  StoredProcedure [dbo].[GetPetientMoreDateYear]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPetientMoreDateYear]
@Date datetime,
@Month int
as 
select 
* 
from Patients where DateOfBirth > DATEADD(month,@Month,@Date);
GO
/****** Object:  StoredProcedure [dbo].[GetPetientSymptombyDate]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPetientSymptombyDate]
@startDate datetime,
@endDate datetime
as 
select 
* 
from PetientSymptom where InitSymptomDate <= @startdate and FinealSymptomDate >= @endDate;
GO
/****** Object:  StoredProcedure [dbo].[GetPetientUseBetween]    Script Date: 30/04/2021 06:30:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetPetientUseBetween]
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
GO
USE [master]
GO
ALTER DATABASE [Task5] SET  READ_WRITE 
GO
