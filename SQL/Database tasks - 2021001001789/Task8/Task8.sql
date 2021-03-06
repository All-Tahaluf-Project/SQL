USE [master]
GO
/****** Object:  Database [Task8]    Script Date: 04/05/2021 09:24:05 م ******/
CREATE DATABASE [Task8]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task8.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task8_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task8_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task8] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task8].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task8] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task8] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task8] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task8] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task8] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task8] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task8] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task8] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task8] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task8] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task8] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task8] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task8] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task8] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task8] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task8] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task8] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task8] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task8] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task8] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task8] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task8] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task8] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task8] SET  MULTI_USER 
GO
ALTER DATABASE [Task8] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task8] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task8] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task8] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task8] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task8] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task8] SET QUERY_STORE = OFF
GO
USE [Task8]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 04/05/2021 09:24:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[Id] [int] NOT NULL,
	[Prof_FName] [varchar](15) NOT NULL,
	[Prof_LName] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 04/05/2021 09:24:05 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ST_Id] [int] NOT NULL,
	[ST_Name] [varchar](50) NOT NULL,
	[Grade] [int] NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[PROF_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[ST_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (0, N'Ruba', N'jebaale')
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (1, N'Ross', N'RossLastName')
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (2, N'Borner', N'BornerLastName')
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (3, N'Jack', N'JackLastName')
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (4, N'Anna', N'AnnaLastName')
INSERT [dbo].[Professors] ([Id], [Prof_FName], [Prof_LName]) VALUES (5, N'Pop', N'PopLastName')
GO
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (0, N'Osama Kaseb AL-Daja', 89, CAST(N'2004-09-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (1, N'Ahmad', 99, CAST(N'2003-05-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (2, N'Yara', 89, CAST(N'2005-11-25T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (3, N'Ali', 80, CAST(N'2005-06-02T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (4, N'Sara', 95, CAST(N'2005-01-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Students] ([ST_Id], [ST_Name], [Grade], [Birthday], [PROF_Id]) VALUES (5, N'Omar', 82, CAST(N'2003-12-09T00:00:00.000' AS DateTime), 4)
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Professors] FOREIGN KEY([PROF_Id])
REFERENCES [dbo].[Professors] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Professors]
GO
/****** Object:  StoredProcedure [dbo].[GetAges]    Script Date: 04/05/2021 09:24:06 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAges]
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
GO
USE [master]
GO
ALTER DATABASE [Task8] SET  READ_WRITE 
GO
