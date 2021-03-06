USE [master]
GO

ALTER DATABASE [Academy] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Academy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Academy] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Academy] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Academy] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Academy] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Academy] SET ARITHABORT ON 
GO
ALTER DATABASE [Academy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Academy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Academy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Academy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Academy] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Academy] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Academy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Academy] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Academy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Academy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Academy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Academy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Academy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Academy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Academy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Academy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Academy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Academy] SET RECOVERY FULL 
GO
ALTER DATABASE [Academy] SET  MULTI_USER 
GO
ALTER DATABASE [Academy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Academy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Academy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Academy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Academy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Academy] SET QUERY_STORE = OFF
GO
USE [Academy]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Academy]
GO
/****** Object:  User [SASA]    Script Date: 3/17/2021 5:22:10 PM ******/
CREATE USER [SASA] FOR LOGIN [SASA] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [SASA]
GO
/****** Object:  Schema [Adminstration]    Script Date: 3/17/2021 5:22:10 PM ******/
CREATE SCHEMA [Adminstration]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[StudentID] [int] NOT NULL,
	[Address1] [varchar](255) NOT NULL,
	[Address2] [varchar](255) NULL,
	[City] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[PostalCode] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adminstrations]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminstrations](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Adminstration] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseDescription] [varchar](255) NOT NULL,
	[CourseTeacher] [varchar](50) NOT NULL,
	[Capacity] [int] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[StartingDate] [date] NOT NULL,
	[creditHours] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tittle] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mark] [float] NOT NULL,
	[StudentCourseID] [int] NOT NULL,
 CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourse]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_StudentCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/17/2021 5:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Age] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](11) NOT NULL,
	[Major] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (1, N'Irbid', N'', N'Amman', N'tlaa al-ali', N'99651')
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (2, N'Haifa', N'', N'Haifa', N'Palastina', N'1114')
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (3, N'Lebannon', N'', N'Lebannon', N'Lebannon', N'4415')
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (4, N'Irbid', N'Khldaa', N'Amman', N'Jordan', N'1224')
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (5, N'goor', N'', N'irbid', N'Jordan', N'554122')
INSERT [dbo].[Addresses] ([StudentID], [Address1], [Address2], [City], [Country], [PostalCode]) VALUES (1001, N'irbid', N'', N'irbid', N'jordan', N'12458')
GO
INSERT [dbo].[Adminstrations] ([UserName], [Password]) VALUES (N'Admin', N'1234')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([ID], [CourseName], [CourseDescription], [CourseTeacher], [Capacity], [Location], [StartingDate], [creditHours]) VALUES (1, N'Em', N'calculate the distance of any vector field', N'Rasem Al-Ali', 10, N'A1', CAST(N'2021-06-10' AS Date), 100)
INSERT [dbo].[Courses] ([ID], [CourseName], [CourseDescription], [CourseTeacher], [Capacity], [Location], [StartingDate], [creditHours]) VALUES (2, N'Power System', N'calculate the power consumption from the load', N'laila Ahmed', 30, N'C1', CAST(N'2020-01-30' AS Date), 30)
INSERT [dbo].[Courses] ([ID], [CourseName], [CourseDescription], [CourseTeacher], [Capacity], [Location], [StartingDate], [creditHours]) VALUES (3, N'C#', N'object oriented programmable', N'Ayman Taani', 20, N'Group2', CAST(N'1988-05-01' AS Date), 150)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([ID], [Tittle]) VALUES (1, N'Male      ')
INSERT [dbo].[Genders] ([ID], [Tittle]) VALUES (2, N'Female    ')
INSERT [dbo].[Genders] ([ID], [Tittle]) VALUES (3, N'NA        ')
INSERT [dbo].[Genders] ([ID], [Tittle]) VALUES (1002, N'kk0       ')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Scores] ON 

INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (1, 60.9, 1)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (2, 90.3, 2)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (3, 55, 3)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (4, 99, 4)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (5, 62, 5)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (6, 55, 6)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (7, 68, 7)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (8, 78, 8)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (9, 69, 9)
INSERT [dbo].[Scores] ([ID], [Mark], [StudentCourseID]) VALUES (10, 98, 10)
SET IDENTITY_INSERT [dbo].[Scores] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentCourse] ON 

INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (1, 1, 1)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (2, 1, 2)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (3, 1, 3)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (4, 2, 1)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (5, 3, 1)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (6, 3, 2)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (7, 3, 3)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (8, 4, 1)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (9, 4, 3)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (10, 5, 2)
INSERT [dbo].[StudentCourse] ([ID], [StudentID], [CourseID]) VALUES (1001, 2, 2)
SET IDENTITY_INSERT [dbo].[StudentCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (1, N'Khalid', N'Jamel', CAST(N'1990-06-30' AS Date), 22, 1, N'Khalidjamel@gmail.com', N'079510247', N'IT')
INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (2, N'Rami', N'Fares', CAST(N'1998-11-03' AS Date), 22, 1, N'Rami123@gmail.com', N'077414520', N'CIS')
INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (3, N'Stephen', N'Carry', CAST(N'1985-06-01' AS Date), 29, 1, N'Stephen332@gmail.com', N'0789541268', N'sport')
INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (4, N'Sara', N'galib', CAST(N'1990-02-04' AS Date), 22, 2, N'sara@gmail.com', N'017851441', N'CIS')
INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (5, N'Noor', N'Thafer', CAST(N'2000-06-09' AS Date), 25, 2, N'Thafer321@gmail.com', N'0798541475', N'Computer analysis')
INSERT [dbo].[Students] ([ID], [FirstName], [LastName], [DateOfBirth], [Age], [GenderID], [Email], [Mobile], [Major]) VALUES (1001, N'Omar', N'Aledawii', CAST(N'1996-12-25' AS Date), 22, 1, N'2014975056@ses.yu.edu.jo', N'0785054145', N'cis')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Students]
GO
ALTER TABLE [dbo].[Scores]  WITH CHECK ADD  CONSTRAINT [FK_Scores_StudentCourse] FOREIGN KEY([StudentCourseID])
REFERENCES [dbo].[StudentCourse] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Scores] CHECK CONSTRAINT [FK_Scores_StudentCourse]
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentCourse] CHECK CONSTRAINT [FK_StudentCourse_Courses]
GO
ALTER TABLE [dbo].[StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentCourse_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentCourse] CHECK CONSTRAINT [FK_StudentCourse_Students]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Genders] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Genders] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Genders]
GO
USE [master]
GO
ALTER DATABASE [Academy] SET  READ_WRITE 
GO
