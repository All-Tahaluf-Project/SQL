USE [master]
GO
/****** Object:  Database [Task3]    Script Date: 27/04/2021 06:22:07 م ******/
CREATE DATABASE [Task3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task3] SET  MULTI_USER 
GO
ALTER DATABASE [Task3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task3] SET QUERY_STORE = OFF
GO
USE [Task3]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 27/04/2021 06:22:08 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Speciality] [varchar](50) NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 27/04/2021 06:22:08 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [int] NOT NULL,
	[PatientName] [varchar](50) NULL,
	[PatientMobile] [varchar](50) NULL,
	[PatientAddress] [varchar](50) NULL,
	[Patientdate] [datetime] NULL,
	[PatientGender] [varchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recommendation]    Script Date: 27/04/2021 06:22:08 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recommendation](
	[Number] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Recommendation] [varchar](50) NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[RequestId] [int] NOT NULL,
 CONSTRAINT [PK_Recommendation] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 27/04/2021 06:22:08 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Number] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Request] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 27/04/2021 06:22:08 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Number] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Request] [nchar](10) NULL,
	[Image] [varchar](50) NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Doctors] ([ID], [Name], [Speciality]) VALUES (0, N'Osama', N'Physical treatment')
INSERT [dbo].[Doctors] ([ID], [Name], [Speciality]) VALUES (1, N'Ahmad', N'Bones')
INSERT [dbo].[Doctors] ([ID], [Name], [Speciality]) VALUES (2, N'Mohammed', N'Chemotherapy')
INSERT [dbo].[Doctors] ([ID], [Name], [Speciality]) VALUES (3, N'Musa', N'Nursing')
INSERT [dbo].[Doctors] ([ID], [Name], [Speciality]) VALUES (4, N'Ali', N'Skin Diseases')
GO
INSERT [dbo].[Patient] ([PatientID], [PatientName], [PatientMobile], [PatientAddress], [Patientdate], [PatientGender]) VALUES (0, N'Thamer', N'0787765466', N'Amman', CAST(N'1986-08-17T00:00:00.000' AS DateTime), N'Male')
INSERT [dbo].[Patient] ([PatientID], [PatientName], [PatientMobile], [PatientAddress], [Patientdate], [PatientGender]) VALUES (1, N'Hamza', N'0799988677', N'Ajloun', CAST(N'1980-06-01T00:00:00.000' AS DateTime), N'Male')
INSERT [dbo].[Patient] ([PatientID], [PatientName], [PatientMobile], [PatientAddress], [Patientdate], [PatientGender]) VALUES (2, N'Maseud', N'0788790961', N'Irbid', CAST(N'1990-12-28T00:00:00.000' AS DateTime), N'Male')
INSERT [dbo].[Patient] ([PatientID], [PatientName], [PatientMobile], [PatientAddress], [Patientdate], [PatientGender]) VALUES (3, N'Adam', N'0777558901', N'Zarqa', CAST(N'1984-03-14T00:00:00.000' AS DateTime), N'Male')
INSERT [dbo].[Patient] ([PatientID], [PatientName], [PatientMobile], [PatientAddress], [Patientdate], [PatientGender]) VALUES (4, N'Akram', N'0788899021', N'Amman', CAST(N'1970-04-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Recommendation] ([Number], [Date], [Recommendation], [PatientId], [DoctorId], [RequestId]) VALUES (0, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Recommendation0', 0, 0, 0)
INSERT [dbo].[Recommendation] ([Number], [Date], [Recommendation], [PatientId], [DoctorId], [RequestId]) VALUES (1, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Recommendation0', 1, 2, 1)
INSERT [dbo].[Recommendation] ([Number], [Date], [Recommendation], [PatientId], [DoctorId], [RequestId]) VALUES (2, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Recommendation0', 2, 1, 2)
INSERT [dbo].[Recommendation] ([Number], [Date], [Recommendation], [PatientId], [DoctorId], [RequestId]) VALUES (3, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Recommendation0', 3, 4, 3)
INSERT [dbo].[Recommendation] ([Number], [Date], [Recommendation], [PatientId], [DoctorId], [RequestId]) VALUES (4, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Recommendation0', 4, 4, 2)
GO
INSERT [dbo].[Requests] ([Number], [Date], [Request], [Image], [PatientId], [DoctorId]) VALUES (0, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Requests0 ', N'IMG0.png', 0, 0)
INSERT [dbo].[Requests] ([Number], [Date], [Request], [Image], [PatientId], [DoctorId]) VALUES (1, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Requests1 ', N'IMG1.png', 1, 2)
INSERT [dbo].[Requests] ([Number], [Date], [Request], [Image], [PatientId], [DoctorId]) VALUES (2, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Requests2 ', N'IMG2.png', 2, 1)
INSERT [dbo].[Requests] ([Number], [Date], [Request], [Image], [PatientId], [DoctorId]) VALUES (3, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Requests3 ', N'IMG3.png', 3, 4)
INSERT [dbo].[Requests] ([Number], [Date], [Request], [Image], [PatientId], [DoctorId]) VALUES (4, CAST(N'2020-08-11T00:00:00.000' AS DateTime), N'Requests4 ', N'IMG4.png', 4, 2)
GO
ALTER TABLE [dbo].[Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_Recommendation_Doctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([ID])
GO
ALTER TABLE [dbo].[Recommendation] CHECK CONSTRAINT [FK_Recommendation_Doctors]
GO
ALTER TABLE [dbo].[Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_Recommendation_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Recommendation] CHECK CONSTRAINT [FK_Recommendation_Patient]
GO
ALTER TABLE [dbo].[Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_Recommendation_Requests] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Number])
GO
ALTER TABLE [dbo].[Recommendation] CHECK CONSTRAINT [FK_Recommendation_Requests]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Doctors] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([ID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Doctors]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Patient]
GO
USE [master]
GO
ALTER DATABASE [Task3] SET  READ_WRITE 
GO
