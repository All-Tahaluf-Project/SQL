USE [master]
GO
/****** Object:  Database [Task1]    Script Date: 26/04/2021 06:33:22 م ******/
CREATE DATABASE [Task1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task1] SET  MULTI_USER 
GO
ALTER DATABASE [Task1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task1] SET QUERY_STORE = OFF
GO
USE [Task1]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 26/04/2021 06:33:22 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Status] [varchar](25) NOT NULL,
	[TotalCost] [int] NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26/04/2021 06:33:22 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] NOT NULL,
	[FName] [varchar](35) NOT NULL,
	[LName] [varchar](35) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[PhoneNumber] [nchar](11) NULL,
	[PerformanceContact] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 26/04/2021 06:33:22 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Name] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 26/04/2021 06:33:22 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] NOT NULL,
	[FName] [varchar](35) NOT NULL,
	[LName] [varchar](35) NOT NULL,
	[GenderID] [int] NOT NULL,
	[PhoneNumber] [varchar](11) NULL,
	[ManageId] [int] NULL,
	[DepartmentId] [int] NOT NULL,
	[Salary] [int] NOT NULL,
	[HireDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 26/04/2021 06:33:22 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] NOT NULL,
	[GenderTitle] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cars] ([Id], [CustomerId], [EmployeeId], [Model], [Status], [TotalCost]) VALUES (3, 0, 0, N'Update3', N'unactive', 23900)
INSERT [dbo].[Cars] ([Id], [CustomerId], [EmployeeId], [Model], [Status], [TotalCost]) VALUES (4, 0, 0, N'modelnew1', N'active', 12000)
INSERT [dbo].[Cars] ([Id], [CustomerId], [EmployeeId], [Model], [Status], [TotalCost]) VALUES (7, 0, 0, N'modelnew1', N'active', 15698)
GO
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (0, N'Ahmad', N'Asad', N'Email', N'0          ', N'P')
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (1, N'Mahmood', N'Musa', N'Email', N'0          ', N'P')
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (3, N'Asad', N'OSama', N'Email@gmail.com', N'0775634978 ', N'P')
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (4, N'Asad', N'OSama', N'Email@gmail.com', N'0775634978 ', N'P')
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (5, N'Ahmad', N'Oama', N'Ahmad265@gmail.com', N'07877653345', N'P')
INSERT [dbo].[Customer] ([Id], [FName], [LName], [Email], [PhoneNumber], [PerformanceContact]) VALUES (7, N'FName', N'LName', N'Email@gmail.com', N'0000000000 ', N'P')
GO
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (0, N'Asp.net Core')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'SQL')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Asp.net MVC5')
GO
INSERT [dbo].[Employees] ([Id], [FName], [LName], [GenderID], [PhoneNumber], [ManageId], [DepartmentId], [Salary], [HireDate]) VALUES (0, N'Osama', N'AL-Daja', 0, N'0795552231', 1, 0, 900, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Employees] ([Id], [FName], [LName], [GenderID], [PhoneNumber], [ManageId], [DepartmentId], [Salary], [HireDate]) VALUES (1, N'Mohammad', N'Ahmad', 0, N'0786671273', 1, 1, 900, CAST(N'2021-04-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Gender] ([GenderID], [GenderTitle]) VALUES (0, N'Male')
INSERT [dbo].[Gender] ([GenderID], [GenderTitle]) VALUES (1, N'Female')
INSERT [dbo].[Gender] ([GenderID], [GenderTitle]) VALUES (2, N'N/A')
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Customer]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ManageId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Gender]
GO
USE [master]
GO
ALTER DATABASE [Task1] SET  READ_WRITE 
GO
