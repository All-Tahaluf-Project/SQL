USE [master]
GO
/****** Object:  Database [Task7]    Script Date: 04/05/2021 09:34:41 م ******/
CREATE DATABASE [Task7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task7] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task7] SET  MULTI_USER 
GO
ALTER DATABASE [Task7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task7] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Task7] SET QUERY_STORE = OFF
GO
USE [Task7]
GO
/****** Object:  Table [dbo].[OrderTable]    Script Date: 04/05/2021 09:34:41 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTable](
	[Id] [int] NOT NULL,
	[TextOrder] [varchar](500) NOT NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 04/05/2021 09:34:41 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 04/05/2021 09:34:41 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdRestaurant] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderTable] ([Id], [TextOrder], [Date]) VALUES (0, N'Text', CAST(N'2021-05-03T18:18:21.700' AS DateTime))
INSERT [dbo].[OrderTable] ([Id], [TextOrder], [Date]) VALUES (1, N'Text1', CAST(N'2021-05-03T18:18:27.887' AS DateTime))
INSERT [dbo].[OrderTable] ([Id], [TextOrder], [Date]) VALUES (2, N'Text2', CAST(N'2021-05-03T18:18:33.653' AS DateTime))
GO
INSERT [dbo].[Restaurant] ([Id], [Name]) VALUES (0, N'Restaurant')
GO
INSERT [dbo].[Staff] ([Id], [Name], [IdRestaurant]) VALUES (0, N'Osama', 0)
GO
ALTER TABLE [dbo].[OrderTable] ADD  DEFAULT (getdate()) FOR [Date]
GO
USE [master]
GO
ALTER DATABASE [Task6] SET  READ_WRITE 
GO
