USE [master]
GO
/****** Object:  Database [Final_Project_Tahaluf]    Script Date: 09/05/2021 09:48:39 م ******/
CREATE DATABASE [Final_Project_Tahaluf]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Final_Project_Tahaluf', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Final_Project_Tahaluf.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Final_Project_Tahaluf_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Final_Project_Tahaluf_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Final_Project_Tahaluf] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Final_Project_Tahaluf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ARITHABORT OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET  MULTI_USER 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Final_Project_Tahaluf] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Final_Project_Tahaluf] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Final_Project_Tahaluf] SET QUERY_STORE = OFF
GO
USE [Final_Project_Tahaluf]
GO
/****** Object:  Table [dbo].[Chef_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chef_Table](
	[Id] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdCuisines] [int] NOT NULL,
 CONSTRAINT [PK_Chef_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_Table](
	[Id] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuisines_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuisines_Table](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cuisines_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Table](
	[Id] [int] NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[PhoneNumber] [varchar](13) NOT NULL,
	[AddressDescription] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Customers_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery_Locations]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_Locations](
	[Id] [int] NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[IdDelivery] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Delivery_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_Table](
	[Id] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Delivery_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_ResturantDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Table](
	[Id] [int] NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[MName] [varchar](50) NOT NULL,
	[LName] [varchar](20) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoenNumber] [varchar](12) NOT NULL,
	[IdDepartment] [int] NOT NULL,
	[Job_Id] [varchar](50) NOT NULL,
	[Salary] [decimal](18, 0) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Location] [varchar](50) NOT NULL,
	[Gender] [tinyint] NOT NULL,
 CONSTRAINT [PK_Employee_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_Table](
	[Id] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IdUnit_Of_Measure] [int] NOT NULL,
	[HowMany] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK__Inventor__3214EC07A79063DA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[Id] [int] NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[IdDepartment] [int] NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_Table](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Materials_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meals_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meals_Table](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[IdType] [int] NOT NULL,
	[IdCuisines] [int] NOT NULL,
	[Descrption] [varchar](5000) NOT NULL,
	[Price] [decimal](18, 5) NOT NULL,
	[PriceCost] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_Meals_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealTypes]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealTypes](
	[Id] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MealTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] NOT NULL,
	[IdMeal] [int] NOT NULL,
	[Offer] [decimal](18, 5) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Materials_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Materials_Table](
	[ID] [int] NOT NULL,
	[IdMaterials] [int] NOT NULL,
	[IdDepartment] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
	[HowMany] [float] NOT NULL,
	[IdUnit_Of_Measure_Table] [int] NOT NULL,
 CONSTRAINT [PK__Orders_M__3214EC2744BE1F82] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_Table](
	[Id] [int] NOT NULL,
	[IdSales] [int] NOT NULL,
	[IdDelivery] [int] NULL,
	[Date] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK__Orders_T__3214EC070403C07C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles_Table](
	[Id] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Roles_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Table](
	[Id] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[PriceCost] [decimal](18, 5) NOT NULL,
	[Price] [decimal](18, 5) NOT NULL,
	[IdMeal] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK__Sales_Ta__3214EC074C89E495] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit_Of_Measure_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit_Of_Measure_Table](
	[Id] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Unit_Of_Measure_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles_Table](
	[Id] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_Table]    Script Date: 09/05/2021 09:48:39 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_Table](
	[Id] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](84) NOT NULL,
	[IdEmplyee] [int] NOT NULL,
	[Block] [bit] NOT NULL,
 CONSTRAINT [PK_Users_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chef_Table] ([Id], [IdUser], [IdCuisines]) VALUES (0, 10, 0)
INSERT [dbo].[Chef_Table] ([Id], [IdUser], [IdCuisines]) VALUES (1, 11, 1)
INSERT [dbo].[Chef_Table] ([Id], [IdUser], [IdCuisines]) VALUES (2, 12, 2)
INSERT [dbo].[Chef_Table] ([Id], [IdUser], [IdCuisines]) VALUES (3, 13, 3)
INSERT [dbo].[Chef_Table] ([Id], [IdUser], [IdCuisines]) VALUES (4, 14, 4)
GO
INSERT [dbo].[Contact_Table] ([Id], [Email], [PhoneNumber]) VALUES (0, N'Company@outlook.com', N'0799996654')
INSERT [dbo].[Contact_Table] ([Id], [Email], [PhoneNumber]) VALUES (1, N'DDD@gmail.com', N'0788866567')
INSERT [dbo].[Contact_Table] ([Id], [Email], [PhoneNumber]) VALUES (2, N'DRE@gmail.com', N'0777766573')
INSERT [dbo].[Contact_Table] ([Id], [Email], [PhoneNumber]) VALUES (3, N'MyEmail@gmail.com', N'0788865466')
INSERT [dbo].[Contact_Table] ([Id], [Email], [PhoneNumber]) VALUES (4, N'RTR@yahoo.com', N'0788886652')
GO
INSERT [dbo].[Cuisines_Table] ([Id], [Name]) VALUES (0, N'Jordan')
INSERT [dbo].[Cuisines_Table] ([Id], [Name]) VALUES (1, N'Itale')
INSERT [dbo].[Cuisines_Table] ([Id], [Name]) VALUES (2, N'France')
INSERT [dbo].[Cuisines_Table] ([Id], [Name]) VALUES (3, N'German')
INSERT [dbo].[Cuisines_Table] ([Id], [Name]) VALUES (4, N'USA')
GO
INSERT [dbo].[Customers_Table] ([Id], [FullName], [Longitude], [Latitude], [PhoneNumber], [AddressDescription]) VALUES (0, N'Osama Ahmad Esaa Abdulla', 31.950475178926038, 35.9291693483543, N'0796666525', N'Amman-Marka-Streat12-House:20')
INSERT [dbo].[Customers_Table] ([Id], [FullName], [Longitude], [Latitude], [PhoneNumber], [AddressDescription]) VALUES (1, N'Musaa Saeed Mohamad Abdulla', 31.950475178926038, 35.9291693483543, N'0798888643', N'Amman-Hashmi-Streat31-House:15')
INSERT [dbo].[Customers_Table] ([Id], [FullName], [Longitude], [Latitude], [PhoneNumber], [AddressDescription]) VALUES (2, N'Ayman Saeed Mohamad Mahmood', 31.950475178926038, 35.9291693483543, N'0795554367', N'Amman-Marka-Streat33-House:19')
INSERT [dbo].[Customers_Table] ([Id], [FullName], [Longitude], [Latitude], [PhoneNumber], [AddressDescription]) VALUES (3, N'Mhmood Abdulah Mohamad Mahmood', 31.950475178926038, 35.9291693483543, N'0788886464', N'Amman-Khalda-Streat14-Boulding:20-Floor:2-Door:13')
INSERT [dbo].[Customers_Table] ([Id], [FullName], [Longitude], [Latitude], [PhoneNumber], [AddressDescription]) VALUES (4, N'Osama Kaseb Odetallah Salem', 31.950475178926038, 35.9291693483543, N'0799996462', N'Amman-Tabarbour-Streat:2-Boulding:14-Floor:1-Door:2')
GO
INSERT [dbo].[Delivery_Locations] ([Id], [Latitude], [Longitude], [IdDelivery], [Date]) VALUES (0, 35.917153053415625, 31.903270622396821, 0, CAST(N'2021-05-08T21:15:41.467' AS DateTime))
INSERT [dbo].[Delivery_Locations] ([Id], [Latitude], [Longitude], [IdDelivery], [Date]) VALUES (1, 35.899986916333894, 31.983678669755285, 1, CAST(N'2021-05-08T21:16:23.290' AS DateTime))
INSERT [dbo].[Delivery_Locations] ([Id], [Latitude], [Longitude], [IdDelivery], [Date]) VALUES (2, 35.899886916333891, 31.983578669755286, 1, CAST(N'2021-05-08T21:16:38.993' AS DateTime))
INSERT [dbo].[Delivery_Locations] ([Id], [Latitude], [Longitude], [IdDelivery], [Date]) VALUES (3, 35.897926979884083, 31.918133929655777, 3, CAST(N'2021-05-08T21:17:29.743' AS DateTime))
INSERT [dbo].[Delivery_Locations] ([Id], [Latitude], [Longitude], [IdDelivery], [Date]) VALUES (4, 35.897926979884083, 31.918133929655777, 4, CAST(N'2021-05-08T21:17:35.660' AS DateTime))
GO
INSERT [dbo].[Delivery_Table] ([Id], [Status], [IdUser]) VALUES (0, 0, 0)
INSERT [dbo].[Delivery_Table] ([Id], [Status], [IdUser]) VALUES (1, 0, 1)
INSERT [dbo].[Delivery_Table] ([Id], [Status], [IdUser]) VALUES (2, 0, 2)
INSERT [dbo].[Delivery_Table] ([Id], [Status], [IdUser]) VALUES (3, 0, 3)
INSERT [dbo].[Delivery_Table] ([Id], [Status], [IdUser]) VALUES (4, 0, 4)
GO
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (1, N'Delivery            ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (2, N'Hall                ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (3, N'Admin               ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (4, N'Chefs               ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (5, N'Call Center         ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (6, N'Purchase            ')
INSERT [dbo].[Departments] ([Id], [Name]) VALUES (7, N'HR                  ')
GO
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (0, N'Osama', N'Kaseb', N'Daaja', 1, N'Osama@gmail.com', N'0795638279', 1, N'Delivry_0001', CAST(500 AS Decimal(18, 0)), CAST(N'2021-05-08T03:57:31.050' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (1, N'Ahmad', N'Mahmood', N'Isaa', 1, N'Ahmad@gmail.com', N'0791287977', 1, N'Delivry_0002', CAST(500 AS Decimal(18, 0)), CAST(N'2021-05-08T04:00:33.677' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (2, N'Esaa', N'Emad', N'Mohamad', 1, N'Esaa@gmail.com', N'0776543563', 1, N'Delivry_0003', CAST(550 AS Decimal(18, 0)), CAST(N'2021-05-08T04:07:53.950' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (3, N'Musa', N'Ahmad', N'Abdulla', 1, N'Musa@gmail.com', N'0788866766', 1, N'Delivry_0003', CAST(842 AS Decimal(18, 0)), CAST(N'2021-05-08T04:11:00.953' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (4, N'Ahmad', N'Mahmood', N'Osama', 1, N'Ahmad123@gmail.com', N'0777788299', 1, N'Delivry_0004', CAST(900 AS Decimal(18, 0)), CAST(N'2021-05-08T04:13:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (5, N'Aamanee', N'Ahmad', N'Aamir', 1, N'Aahil@gmail.com', N'0796663354', 5, N'CallCenter_0001', CAST(600 AS Decimal(18, 0)), CAST(N'2021-05-08T11:57:31.050' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (6, N'Aamina', N'Ahmad', N'Aamir', 1, N'Aamina@gmail.com', N'0777766312', 5, N'CallCenter_0002', CAST(600 AS Decimal(18, 0)), CAST(N'2021-05-08T11:00:33.677' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (7, N'Aalia', N'Musa', N'Assad', 1, N'Aalia@gmail.com', N'0796665444', 5, N'CallCenter_0003', CAST(600 AS Decimal(18, 0)), CAST(N'2021-05-08T11:07:53.950' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (8, N'Aalimah', N'Mohamad', N'Kassab', 1, N'Aalimah@gmail.com', N'0777766548', 5, N'CallCenter_0004', CAST(750 AS Decimal(18, 0)), CAST(N'2021-05-08T11:11:00.953' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (9, N'Aamir', N'Osama', N'Mahmood', 1, N'Aamir@gmail.com', N'0788886657', 5, N'CallCenter_0005', CAST(900 AS Decimal(18, 0)), CAST(N'2021-05-08T11:13:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (10, N'Aaliyah', N'Ahmad', N'Mahmood', 1, N'Aaliyah@gmail.com', N'0799996756', 4, N'Chef_0001', CAST(1500 AS Decimal(18, 0)), CAST(N'2021-05-08T11:30:34.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (11, N'Aamira', N'Osama', N'Ahmad', 1, N'Aamira99@gmail.com', N'0798881922', 4, N'Chef_0002', CAST(1700 AS Decimal(18, 0)), CAST(N'2021-05-08T11:33:34.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (12, N'Aalam', N'Musa', N'Isaa', 1, N'Aalam77@gmail.com', N'0776577665', 4, N'Chef_0003', CAST(1500 AS Decimal(18, 0)), CAST(N'2021-05-08T11:35:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (13, N'Salem', N'Ahmad', N'Mohamad', 1, N'Salem@gmail.com', N'0788888665', 4, N'Chef_0004', CAST(2000 AS Decimal(18, 0)), CAST(N'2021-05-08T11:37:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (14, N'Saad', N'Ahmad', N'Mohamad', 1, N'Saad@gmail.com', N'0777765547', 4, N'Chef_0005', CAST(1500 AS Decimal(18, 0)), CAST(N'2021-05-08T11:39:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (15, N'Aalla', N'Saad', N'Mohamad', 1, N'Aalla@gmail.com', N'0799996665', 6, N'Purchase_0001', CAST(500 AS Decimal(18, 0)), CAST(N'2021-05-08T11:45:34.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (16, N'Aalla', N'Musa', N'Ahmad', 1, N'AallaA@gmail.com', N'0788866658', 6, N'Purchase_0002', CAST(510 AS Decimal(18, 0)), CAST(N'2021-05-08T11:46:34.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (17, N'Baahir', N'Mahmood', N'Ahmad', 1, N'Baahir@gmail.com', N'0799999665', 6, N'Purchase_0003', CAST(560 AS Decimal(18, 0)), CAST(N'2021-05-08T11:46:36.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (18, N'Abdul Waali', N'Mahmood', N'Mohmad', 1, N'AbdulWaali@gmail.com', N'0796662312', 6, N'Purchase_0004', CAST(560 AS Decimal(18, 0)), CAST(N'2021-05-08T11:47:36.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (19, N'Abdur Raheem', N'Absi', N'Abqurah', 1, N'AbdurRaheem@gmail.com', N'0777766654', 6, N'Purchase_0005', CAST(570 AS Decimal(18, 0)), CAST(N'2021-05-08T11:48:36.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (20, N'Aakifah', N'Isaa', N'Mohamad', 1, N'Aakifah@gmail.com', N'0786666231', 7, N'HR_0001', CAST(700 AS Decimal(18, 0)), CAST(N'2021-05-08T11:51:36.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (21, N'Abed', N'Abed', N'Ahmad', 1, N'Abed@gmail.com', N'0777732134', 7, N'HR_0002', CAST(720 AS Decimal(18, 0)), CAST(N'2021-05-08T11:52:36.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (22, N'Abul Hassan', N'Musa', N'Ali', 1, N'AbulHassan@gmail.com', N'0799993213', 7, N'HR_0003', CAST(800 AS Decimal(18, 0)), CAST(N'2021-05-08T11:53:36.070' AS DateTime), NULL, N'Amman', 0)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (23, N'Afra', N'Aalla', N'Abdul Waali', 1, N'Afra@gmail.com', N'0788865467', 7, N'HR_0004', CAST(750 AS Decimal(18, 0)), CAST(N'2021-05-08T11:56:36.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (24, N'Afiyah', N'Esaa', N'Emad', 1, N'Afiyah@gmail.com', N'0777331233', 7, N'HR_0005', CAST(750 AS Decimal(18, 0)), CAST(N'2021-05-08T11:56:36.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (25, N'Aisha', N'Abed', N'Abul Hassan', 1, N'Aisha@gmail.com', N'0788823134', 3, N'Admin_0001', CAST(2000 AS Decimal(18, 0)), CAST(N'2021-05-08T11:58:36.070' AS DateTime), NULL, N'Amman', 1)
INSERT [dbo].[Employee_Table] ([Id], [FName], [MName], [LName], [Status], [Email], [PhoenNumber], [IdDepartment], [Job_Id], [Salary], [StartDate], [EndDate], [Location], [Gender]) VALUES (26, N'Akifa', N'Baahir', N'Abdur Raheem', 1, N'Akifa@gmail.com', N'0788831234', 3, N'Admin_0002', CAST(2000 AS Decimal(18, 0)), CAST(N'2021-05-08T11:59:36.070' AS DateTime), NULL, N'Amman', 1)
GO
INSERT [dbo].[Inventory_Table] ([Id], [IdMaterial], [IdUnit_Of_Measure], [HowMany], [Date]) VALUES (0, 0, 0, 2000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inventory_Table] ([Id], [IdMaterial], [IdUnit_Of_Measure], [HowMany], [Date]) VALUES (1, 1, 0, 1000, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inventory_Table] ([Id], [IdMaterial], [IdUnit_Of_Measure], [HowMany], [Date]) VALUES (2, 4, 0, 300, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inventory_Table] ([Id], [IdMaterial], [IdUnit_Of_Measure], [HowMany], [Date]) VALUES (3, 8, 0, 200, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Inventory_Table] ([Id], [IdMaterial], [IdUnit_Of_Measure], [HowMany], [Date]) VALUES (4, 2, 0, 1200, CAST(N'2021-05-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (0, 4, 1)
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (1, 5, 5)
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (2, 13, 4)
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (3, 19, 6)
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (4, 22, 7)
INSERT [dbo].[Managers] ([Id], [IdEmployee], [IdDepartment]) VALUES (5, 25, 3)
GO
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (0, N'Flour')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (1, N'Rice')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (2, N'Chickens')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (3, N'Fish')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (4, N'Meat')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (5, N'Jameed')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (6, N'Eggs')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (7, N'Milk')
INSERT [dbo].[Materials_Table] ([Id], [Name]) VALUES (8, N'Fruits')
GO
INSERT [dbo].[Meals_Table] ([Id], [Name], [Status], [IdType], [IdCuisines], [Descrption], [Price], [PriceCost]) VALUES (0, N'Eggs', 1, 0, 0, N'Ghee With eggs', CAST(4.00000 AS Decimal(18, 5)), CAST(3.00000 AS Decimal(18, 5)))
INSERT [dbo].[Meals_Table] ([Id], [Name], [Status], [IdType], [IdCuisines], [Descrption], [Price], [PriceCost]) VALUES (1, N'Cinnamon Rolls', 1, 1, 3, N'Milk,All-purpose flour,Butter,Brown sugar,Ground Cinnamon,Cream cheese,Vanilla Extract', CAST(10.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)))
INSERT [dbo].[Meals_Table] ([Id], [Name], [Status], [IdType], [IdCuisines], [Descrption], [Price], [PriceCost]) VALUES (2, N'Salat Fruit', 1, 2, 4, N'Mix Of Fruit', CAST(12.00000 AS Decimal(18, 5)), CAST(11.00000 AS Decimal(18, 5)))
INSERT [dbo].[Meals_Table] ([Id], [Name], [Status], [IdType], [IdCuisines], [Descrption], [Price], [PriceCost]) VALUES (3, N'Mansaf ', 1, 3, 0, N'lean lamb,onion,jameed ,small grain rice,Clarified butterwhole blanched almonds,whole blanched almonds,Salt and paper', CAST(20.00000 AS Decimal(18, 5)), CAST(17.00000 AS Decimal(18, 5)))
INSERT [dbo].[Meals_Table] ([Id], [Name], [Status], [IdType], [IdCuisines], [Descrption], [Price], [PriceCost]) VALUES (4, N'Creamy rice & chicken bake', 1, 4, 2, N'Sweet', CAST(10.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)))
GO
INSERT [dbo].[MealTypes] ([Id], [Title]) VALUES (0, N'Breakfast')
INSERT [dbo].[MealTypes] ([Id], [Title]) VALUES (1, N'Brunch')
INSERT [dbo].[MealTypes] ([Id], [Title]) VALUES (2, N'Healthy')
INSERT [dbo].[MealTypes] ([Id], [Title]) VALUES (3, N'Lunch')
INSERT [dbo].[MealTypes] ([Id], [Title]) VALUES (4, N'Dinner')
GO
INSERT [dbo].[Offers] ([Id], [IdMeal], [Offer], [StartDate], [EndDate]) VALUES (0, 1, CAST(3.50000 AS Decimal(18, 5)), CAST(N'2020-12-29T00:00:00.000' AS DateTime), CAST(N'2021-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Offers] ([Id], [IdMeal], [Offer], [StartDate], [EndDate]) VALUES (1, 2, CAST(0.50000 AS Decimal(18, 5)), CAST(N'2020-12-29T00:00:00.000' AS DateTime), CAST(N'2021-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Offers] ([Id], [IdMeal], [Offer], [StartDate], [EndDate]) VALUES (2, 2, CAST(0.10000 AS Decimal(18, 5)), CAST(N'2020-05-25T00:00:00.000' AS DateTime), CAST(N'2020-05-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Offers] ([Id], [IdMeal], [Offer], [StartDate], [EndDate]) VALUES (3, 3, CAST(1.50000 AS Decimal(18, 5)), CAST(N'2020-05-25T00:00:00.000' AS DateTime), CAST(N'2020-05-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Offers] ([Id], [IdMeal], [Offer], [StartDate], [EndDate]) VALUES (4, 4, CAST(2.00000 AS Decimal(18, 5)), CAST(N'2020-05-25T00:00:00.000' AS DateTime), CAST(N'2020-05-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders_Materials_Table] ([ID], [IdMaterials], [IdDepartment], [Date], [Status], [HowMany], [IdUnit_Of_Measure_Table]) VALUES (0, 0, 4, CAST(N'2021-01-28T00:00:00.000' AS DateTime), 1, 20, 0)
INSERT [dbo].[Orders_Materials_Table] ([ID], [IdMaterials], [IdDepartment], [Date], [Status], [HowMany], [IdUnit_Of_Measure_Table]) VALUES (1, 1, 4, CAST(N'2021-01-28T00:00:00.000' AS DateTime), 1, 40, 0)
INSERT [dbo].[Orders_Materials_Table] ([ID], [IdMaterials], [IdDepartment], [Date], [Status], [HowMany], [IdUnit_Of_Measure_Table]) VALUES (2, 2, 4, CAST(N'2021-01-28T00:00:00.000' AS DateTime), 1, 10, 0)
INSERT [dbo].[Orders_Materials_Table] ([ID], [IdMaterials], [IdDepartment], [Date], [Status], [HowMany], [IdUnit_Of_Measure_Table]) VALUES (3, 4, 4, CAST(N'2021-01-28T00:00:00.000' AS DateTime), 1, 10, 0)
INSERT [dbo].[Orders_Materials_Table] ([ID], [IdMaterials], [IdDepartment], [Date], [Status], [HowMany], [IdUnit_Of_Measure_Table]) VALUES (4, 8, 4, CAST(N'2021-01-28T00:00:00.000' AS DateTime), 1, 10, 0)
GO
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (0, 0, NULL, CAST(N'2021-05-08T10:28:40.893' AS DateTime), 0)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (1, 0, 0, CAST(N'2021-05-08T10:28:56.827' AS DateTime), 1)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (2, 0, 0, CAST(N'2021-05-08T10:29:42.660' AS DateTime), 3)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (3, 1, 1, CAST(N'2021-05-08T10:33:58.903' AS DateTime), 1)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (4, 2, 2, CAST(N'2021-05-08T10:34:14.837' AS DateTime), 1)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (5, 3, 3, CAST(N'2021-05-08T10:34:21.810' AS DateTime), 1)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (6, 4, 4, CAST(N'2021-05-08T10:34:28.470' AS DateTime), 1)
INSERT [dbo].[Orders_Table] ([Id], [IdSales], [IdDelivery], [Date], [Status]) VALUES (7, 1, 1, CAST(N'2021-05-08T15:58:19.027' AS DateTime), 3)
GO
INSERT [dbo].[Roles_Table] ([Id], [Name]) VALUES (0, N'Admin')
INSERT [dbo].[Roles_Table] ([Id], [Name]) VALUES (1, N'Delivery')
INSERT [dbo].[Roles_Table] ([Id], [Name]) VALUES (2, N'Purchase')
INSERT [dbo].[Roles_Table] ([Id], [Name]) VALUES (3, N'CallCenter')
INSERT [dbo].[Roles_Table] ([Id], [Name]) VALUES (4, N'Chef')
GO
INSERT [dbo].[Sales_Table] ([Id], [Number], [PriceCost], [Price], [IdMeal], [IdCustomer], [Date]) VALUES (0, 3, CAST(3.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), 0, 0, CAST(N'2021-05-08T10:01:22.153' AS DateTime))
INSERT [dbo].[Sales_Table] ([Id], [Number], [PriceCost], [Price], [IdMeal], [IdCustomer], [Date]) VALUES (1, 1, CAST(8.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), 1, 1, CAST(N'2021-05-08T10:30:56.297' AS DateTime))
INSERT [dbo].[Sales_Table] ([Id], [Number], [PriceCost], [Price], [IdMeal], [IdCustomer], [Date]) VALUES (2, 10, CAST(11.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), 2, 2, CAST(N'2021-05-08T10:31:32.227' AS DateTime))
INSERT [dbo].[Sales_Table] ([Id], [Number], [PriceCost], [Price], [IdMeal], [IdCustomer], [Date]) VALUES (3, 2, CAST(17.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 3, 3, CAST(N'2021-05-08T10:32:18.677' AS DateTime))
INSERT [dbo].[Sales_Table] ([Id], [Number], [PriceCost], [Price], [IdMeal], [IdCustomer], [Date]) VALUES (4, 4, CAST(9.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), 4, 4, CAST(N'2021-05-08T10:32:36.967' AS DateTime))
GO
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (0, N'Kilograms')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (1, N'Hectograms ')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (2, N'Dekagrams ')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (3, N'Grams')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (4, N'Decigrams ')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (5, N'Centigrams')
INSERT [dbo].[Unit_Of_Measure_Table] ([Id], [Title]) VALUES (6, N'Milligrams')
GO
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (0, 0, 1)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (1, 1, 1)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (2, 2, 1)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (3, 3, 1)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (4, 4, 1)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (5, 5, 3)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (6, 6, 3)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (7, 7, 3)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (8, 8, 3)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (9, 9, 3)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (10, 10, 4)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (11, 11, 4)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (12, 12, 4)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (13, 13, 4)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (14, 14, 4)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (15, 15, 2)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (16, 16, 2)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (17, 17, 2)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (18, 18, 2)
INSERT [dbo].[UserRoles_Table] ([Id], [IdUser], [IdRole]) VALUES (19, 19, 2)
GO
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (0, N'Osama', N'Osama123', 0, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (1, N'Ahmad', N'Ahmad123', 1, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (2, N'Esaa', N'Esaa123', 2, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (3, N'Musa', N'Musa123', 3, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (4, N'Ahmad', N'Ahmad123', 4, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (5, N'Aamanee', N'Aamanee88', 5, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (6, N'Aamina', N'Aamina&&4', 6, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (7, N'Aalia', N'Aalia%#', 7, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (8, N'Aalimah', N'Aalimah%T77', 8, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (9, N'Aamir', N'Aalimah%T77', 9, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (10, N'Aaliyah', N'Aaliyah%5', 10, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (11, N'Aamira', N'Aamira66', 11, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (12, N'Aalam', N'AalamUU', 12, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (13, N'Salem', N'Salem55', 13, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (14, N'Saad', N'Saad44', 14, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (15, N'Aalla', N'Aalla3#', 15, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (16, N'AallaFM', N'AallaFM6^', 16, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (17, N'Baahir', N'Baahir%%', 17, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (18, N'AbdulWaali', N'AbdulWaali%_%', 18, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (19, N'AbdurRaheem', N'Abdur RaheemRR', 19, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (20, N'Aisha', N'Aisha123', 25, 0)
INSERT [dbo].[Users_Table] ([Id], [UserName], [Password], [IdEmplyee], [Block]) VALUES (21, N'Akifa', N'Akifa123', 26, 0)
GO
ALTER TABLE [dbo].[Inventory_Table] ADD  CONSTRAINT [DF__Inventory__DateT__45BE5BA9]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Orders_Materials_Table] ADD  CONSTRAINT [DF__Orders_Mat__Date__2EDAF651]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Orders_Table] ADD  CONSTRAINT [DF__Orders_Ta__DateT__3B40CD36]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Sales_Table] ADD  CONSTRAINT [DF__Sales_Tabl__Date__65F62111]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Chef_Table]  WITH CHECK ADD  CONSTRAINT [FK_Chef_Table_Cuisines_Table] FOREIGN KEY([IdCuisines])
REFERENCES [dbo].[Cuisines_Table] ([Id])
GO
ALTER TABLE [dbo].[Chef_Table] CHECK CONSTRAINT [FK_Chef_Table_Cuisines_Table]
GO
ALTER TABLE [dbo].[Chef_Table]  WITH CHECK ADD  CONSTRAINT [FK_Chef_Table_Users_Table] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users_Table] ([Id])
GO
ALTER TABLE [dbo].[Chef_Table] CHECK CONSTRAINT [FK_Chef_Table_Users_Table]
GO
ALTER TABLE [dbo].[Delivery_Locations]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Locations_Delivery_Table] FOREIGN KEY([IdDelivery])
REFERENCES [dbo].[Delivery_Table] ([Id])
GO
ALTER TABLE [dbo].[Delivery_Locations] CHECK CONSTRAINT [FK_Delivery_Locations_Delivery_Table]
GO
ALTER TABLE [dbo].[Delivery_Table]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Table_Users_Table] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users_Table] ([Id])
GO
ALTER TABLE [dbo].[Delivery_Table] CHECK CONSTRAINT [FK_Delivery_Table_Users_Table]
GO
ALTER TABLE [dbo].[Employee_Table]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Table_ResturantDepartments2] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Employee_Table] CHECK CONSTRAINT [FK_Employee_Table_ResturantDepartments2]
GO
ALTER TABLE [dbo].[Inventory_Table]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Table_Materials_Table] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Materials_Table] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Table] CHECK CONSTRAINT [FK_Inventory_Table_Materials_Table]
GO
ALTER TABLE [dbo].[Inventory_Table]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Table_Unit_Of_Measure_Table] FOREIGN KEY([IdUnit_Of_Measure])
REFERENCES [dbo].[Unit_Of_Measure_Table] ([Id])
GO
ALTER TABLE [dbo].[Inventory_Table] CHECK CONSTRAINT [FK_Inventory_Table_Unit_Of_Measure_Table]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Employee_Table] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee_Table] ([Id])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Employee_Table]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_ResturantDepartments] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_ResturantDepartments]
GO
ALTER TABLE [dbo].[Meals_Table]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Table_Cuisines_Table] FOREIGN KEY([IdCuisines])
REFERENCES [dbo].[Cuisines_Table] ([Id])
GO
ALTER TABLE [dbo].[Meals_Table] CHECK CONSTRAINT [FK_Meals_Table_Cuisines_Table]
GO
ALTER TABLE [dbo].[Meals_Table]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Table_MealTypes] FOREIGN KEY([IdType])
REFERENCES [dbo].[MealTypes] ([Id])
GO
ALTER TABLE [dbo].[Meals_Table] CHECK CONSTRAINT [FK_Meals_Table_MealTypes]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Meals_Table] FOREIGN KEY([IdMeal])
REFERENCES [dbo].[Meals_Table] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Meals_Table]
GO
ALTER TABLE [dbo].[Orders_Materials_Table]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Materials_Table_Materials_Table] FOREIGN KEY([IdMaterials])
REFERENCES [dbo].[Materials_Table] ([Id])
GO
ALTER TABLE [dbo].[Orders_Materials_Table] CHECK CONSTRAINT [FK_Orders_Materials_Table_Materials_Table]
GO
ALTER TABLE [dbo].[Orders_Materials_Table]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Materials_Table_ResturantDepartments] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Orders_Materials_Table] CHECK CONSTRAINT [FK_Orders_Materials_Table_ResturantDepartments]
GO
ALTER TABLE [dbo].[Orders_Materials_Table]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Materials_Table_Unit_Of_Measure_Table] FOREIGN KEY([IdUnit_Of_Measure_Table])
REFERENCES [dbo].[Unit_Of_Measure_Table] ([Id])
GO
ALTER TABLE [dbo].[Orders_Materials_Table] CHECK CONSTRAINT [FK_Orders_Materials_Table_Unit_Of_Measure_Table]
GO
ALTER TABLE [dbo].[Orders_Table]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Table_Delivery_Table] FOREIGN KEY([IdDelivery])
REFERENCES [dbo].[Delivery_Table] ([Id])
GO
ALTER TABLE [dbo].[Orders_Table] CHECK CONSTRAINT [FK_Orders_Table_Delivery_Table]
GO
ALTER TABLE [dbo].[Orders_Table]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Table_Sales_Table] FOREIGN KEY([IdSales])
REFERENCES [dbo].[Sales_Table] ([Id])
GO
ALTER TABLE [dbo].[Orders_Table] CHECK CONSTRAINT [FK_Orders_Table_Sales_Table]
GO
ALTER TABLE [dbo].[Sales_Table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Table_Customers_Table] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customers_Table] ([Id])
GO
ALTER TABLE [dbo].[Sales_Table] CHECK CONSTRAINT [FK_Sales_Table_Customers_Table]
GO
ALTER TABLE [dbo].[Sales_Table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Table_Meals_Table] FOREIGN KEY([IdMeal])
REFERENCES [dbo].[Meals_Table] ([Id])
GO
ALTER TABLE [dbo].[Sales_Table] CHECK CONSTRAINT [FK_Sales_Table_Meals_Table]
GO
ALTER TABLE [dbo].[UserRoles_Table]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Table_Roles_Table] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Roles_Table] ([Id])
GO
ALTER TABLE [dbo].[UserRoles_Table] CHECK CONSTRAINT [FK_UserRoles_Table_Roles_Table]
GO
ALTER TABLE [dbo].[UserRoles_Table]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Table_Users_Table] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users_Table] ([Id])
GO
ALTER TABLE [dbo].[UserRoles_Table] CHECK CONSTRAINT [FK_UserRoles_Table_Users_Table]
GO
ALTER TABLE [dbo].[Users_Table]  WITH CHECK ADD  CONSTRAINT [FK_Users_Table_Employee_Table1] FOREIGN KEY([IdEmplyee])
REFERENCES [dbo].[Employee_Table] ([Id])
GO
ALTER TABLE [dbo].[Users_Table] CHECK CONSTRAINT [FK_Users_Table_Employee_Table1]
GO
/****** Object:  StoredProcedure [dbo].[AddCallCenter]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddCallCenter]
@Id as int,
@IdUser as int
as
begin try
INSERT INTO CallCenter_Table(Id,IdUser)
VALUES (@Id,@IdUser);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddChef]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddChef]
@Id as int,
@IdUser as int,
@IdCuisines as int
as
begin try
INSERT INTO Chef_Table(Id,IdUser,IdCuisines)
VALUES (@Id,@IdUser,0);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddCustomer]
@Id as int,
@FullName as varchar(100),
@Latitude as float,
@Longitude as float,
@PhoneNumber as varchar(13),
@AddressDescription as varchar(1000)
as
begin try
INSERT INTO Customers_Table(Id,FullName,Latitude,Longitude,PhoneNumber,AddressDescription)
VALUES (@Id,@FullName,@Latitude,@Longitude,@PhoneNumber,@AddressDescription);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddDeliveryLocations]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Proc [dbo].[AddDeliveryLocations]
@Id as int,
@IdDelivery as int,
@Latitude as float,
@Longitude as float
as
begin try
INSERT INTO Delivery_Locations(Id,IdDelivery,Latitude,Longitude,Date)
VALUES (@Id,@IdDelivery,@Latitude,@Longitude,GETDATE());
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddDelivry]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddDelivry]
@Id as int,
@IdUser as int,
@IdEmployee as int
as
begin try
INSERT INTO Delivery_Table(Id,IdUser,Status)
VALUES (@Id,@IdUser,0);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddEmployee]
@IdEmployee as int,
@FName as varchar(50),
@MName as varchar(50),
@LName as varchar(50),
@Email as varchar(50),
@PhoenNumber as varchar(12),
@IdDepartment as int,
@Job_Id as varchar(50),
@Salary as decimal(18,0),
@Location as varchar(50),
@Gender as tinyint
as
begin try
INSERT INTO Employee_Table(Id,FName, MName,LName,Status,Email,PhoenNumber,IdDepartment,Job_Id,Salary,StartDate,EndDate,
Location,Gender)
VALUES (@IdEmployee, @FName, @MName,@LName,1,@Email,@PhoenNumber,@IdDepartment
,@Job_Id,@Salary,GETDATE(),null,@Location,@Gender);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddHR]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddHR]
@Id as int,
@IdEmployee as int
as
begin try
INSERT INTO HR_Table(Id,IdEmployee)
VALUES (@Id,@IdEmployee);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddOrder]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddOrder]
@Id as int,
@IdSales as int,
@IdDelivery as int,
@Status as float
as
begin try
INSERT INTO Orders_Table(Id,IdSales,IdDelivery,Status)
VALUES (@Id,@IdSales,@IdDelivery,@Status);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddPurchase]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddPurchase]
@Id as int,
@IdUser as int
as
begin try
INSERT INTO Purchase_Table(Id,IdUser)
VALUES (@Id,@IdUser);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddRoleUser]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddRoleUser]
@IdRoleList as int,
@IdUser as int,
@IdRole as int
as
begin try
INSERT INTO UserRoles_Table(Id,IdUser,IdRole)
VALUES (@IdRoleList,@IdUser,@IdRole);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddSales]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddSales]
@Id as int,
@Number as int,
@Price as decimal(18,5),
@IdMeal as float,
@IdCustomer as varchar(1000)
as
begin try
INSERT INTO Sales_Table(Id,Number,Price,IdMeal,IdCustomer)
VALUES (@Id,@Number,@Price,@IdMeal,@IdCustomer);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[AddUser]
@Id as int,
@UserName as Varchar(50),
@Password as Varchar(50),

@IdEmployee as int
as
begin try
INSERT INTO Users_Table(Id,UserName,Password,Block,IdEmplyee)
VALUES (@Id,@UserName,@Password,0,@IdEmployee);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[CreateMeal]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[CreateMeal]
@Id as int,
@Name as varchar(50),
@Status as tinyint,
@IdType as int,
@IdCuisines as int,
@Price as decimal(18,5),
@Descrption as varchar(5000),
@PriceCost as decimal(18,5)
as
begin try
INSERT INTO Meals_Table(Id,Name,Status,IdType,IdCuisines,Descrption,Price,PriceCost)
VALUES (@Id,@Name,@Status,@IdType,@IdCuisines,@Descrption,@Price,@PriceCost);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[CreateOffers]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[CreateOffers]
@Id as int,
@IdMeal as int,
@Offer as decimal,
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
INSERT INTO Offers
VALUES (@Id,@IdMeal,@Offer,@StartDate,@EndDate);
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[DeleteMeal]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[DeleteMeal]
@Id as int
as
begin try
Delete Meals_Table where Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[DeleteOffers]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[DeleteOffers]
@Id as int
as
begin try
Delete Offers where Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[DisplayingMeals]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[DisplayingMeals]
@IdMeal as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Status,
M.Descrption as Descrption,
M.Price as Price,
T.Title as Type,
O.Offer as Offer,
O.StartDate as [Start Date Offer],
O.EndDate as [End Date Offer],
C.Name as [Cuisines Name]
from Meals_Table as M 
join Offers as O on M.Id = O.IdMeal
join MealTypes as T on M.IdType = T.Id
join Cuisines_Table as C on M.IdCuisines = C.Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[LogIn]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[LogIn]
@UserName as varchar(50),
@Password as varchar(50)
as
begin try
select 
U.UserName as UserName,
U.Block as Block,
E.Email as Email,
E.EndDate as EndDate,
E.FName as FName,
E.Gender as Gender,
E.Job_Id as Job_Id,
E.LName as LName,
E.Location as Location,
E.MName as MName,
E.PhoenNumber as PhoenNumber,
E.Salary as Salary,
E.StartDate as StartDate,
E.Status as Status,
D.Name as Department
from Users_Table as U join Employee_Table as E on U.IdEmplyee = E.Id 
join Departments as D on E.IdDepartment = D.Id
where UserName = @UserName and Password = @Password
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[ReadByDateOffers]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ReadByDateOffers]
@StartDate as DateTime,
@EndDate as DateTime
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
O.Offer as Offer,
O.StartDate as StartDate,
O.EndDate as EndDate
from Offers as O join Meals_Table as M on M.Id = O.IdMeal where 
StartDate between @StartDate and @EndDate
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[ReadByIdMeal]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ReadByIdMeal]
@Id as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Descrption as Descrption,
M.Price as Price,
M.PriceCost as PriceCost,
MT.Title as Type,
C.Name as [Name Cuisines]
from Meals_Table as M join MealTypes as MT on M.IdType = MT.Id join Cuisines_Table as C on M.IdCuisines = C.Id
where M.Id = @Id
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[ReadByMealIdOffers]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ReadByMealIdOffers]
@IdMeal as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Price as Price,
O.Offer as Offer,
O.StartDate as StartDate,
O.EndDate as EndDate
from Offers as O join Meals_Table as M on M.Id = O.IdMeal where IdMeal = @IdMeal
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[ReadByTypeMeal]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ReadByTypeMeal]
@IdType as int
as
begin try
Select 
M.Id as Id,
M.Name as Name,
M.Status as Name,
M.Descrption as Descrption,
M.Price as Price,
M.PriceCost as PriceCost,
MT.Title as Type,
C.Name as [Name Cuisines]
from Meals_Table as M join MealTypes as MT on M.IdType = MT.Id join Cuisines_Table as C on M.IdCuisines = C.Id
where IdType = @IdType
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[ReportsForExtractingTheNetProfit]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ReportsForExtractingTheNetProfit]
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
select 
Sum((S.Price - S.PriceCost) * S.Number)
from Orders_Table as O join Sales_Table as S on O.IdSales = S.Id where O.Status = 3 or O.Status = 4 
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[UpdateMeal]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[UpdateMeal]
@Id as int,
@Name as varchar(50),
@Status as tinyint,
@IdType as int,
@IdCuisines as int,
@Price as decimal(18,5),
@Descrption as varchar(5000),
@PriceCost as decimal(18,5)
as
begin try
Update Meals_Table set Name = @Name , Status = @Status ,IdType = @IdType,IdCuisines = @IdCuisines,Descrption = @Descrption
,Price = @Price,PriceCost = @PriceCost where Id = @Id;
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
/****** Object:  StoredProcedure [dbo].[UpdateOffers]    Script Date: 09/05/2021 09:48:40 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[UpdateOffers]
@Id as int,
@IdMeal as int,
@Offer as decimal,
@StartDate as Datetime,
@EndDate as Datetime
as
begin try
Update Offers set IdMeal = @IdMeal , Offer = @Offer ,StartDate = @StartDate,EndDate = @EndDate where Id = @Id;
end try
begin catch
select ERROR_MESSAGE() as ERROR_MESSAGE
end catch
GO
USE [master]
GO
ALTER DATABASE [Final_Project_Tahaluf] SET  READ_WRITE 
GO
