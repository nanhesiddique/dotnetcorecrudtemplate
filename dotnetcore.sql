USE [master]
GO
/****** Object:  Database [dotNetCore]    Script Date: 07/30/2019 22:42:14 ******/
CREATE DATABASE [dotNetCore] ON  PRIMARY 
( NAME = N'dotNetCore', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dotNetCore.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dotNetCore_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dotNetCore_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dotNetCore] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dotNetCore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dotNetCore] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dotNetCore] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dotNetCore] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dotNetCore] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dotNetCore] SET ARITHABORT OFF
GO
ALTER DATABASE [dotNetCore] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [dotNetCore] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dotNetCore] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dotNetCore] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dotNetCore] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dotNetCore] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dotNetCore] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dotNetCore] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dotNetCore] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dotNetCore] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dotNetCore] SET  DISABLE_BROKER
GO
ALTER DATABASE [dotNetCore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dotNetCore] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dotNetCore] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [dotNetCore] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dotNetCore] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dotNetCore] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dotNetCore] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dotNetCore] SET  READ_WRITE
GO
ALTER DATABASE [dotNetCore] SET RECOVERY SIMPLE
GO
ALTER DATABASE [dotNetCore] SET  MULTI_USER
GO
ALTER DATABASE [dotNetCore] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [dotNetCore] SET DB_CHAINING OFF
GO
USE [dotNetCore]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 07/30/2019 22:42:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON
INSERT [dbo].[UserMaster] ([Id], [UserId], [Password]) VALUES (1, N'Nanhe', N'123')
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
/****** Object:  Table [dbo].[Teacher]    Script Date: 07/30/2019 22:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Skills] [varchar](100) NULL,
	[TotalStudents] [int] NULL,
	[Salary] [money] NULL,
	[AddedOn] [smalldatetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([Id], [Name], [Skills], [TotalStudents], [Salary], [AddedOn]) VALUES (3, N'nanhe siddique', N'ASP.NET Core', 40, 36000.0000, CAST(0xAA87000C AS SmallDateTime))
INSERT [dbo].[Teacher] ([Id], [Name], [Skills], [TotalStudents], [Salary], [AddedOn]) VALUES (2, N'Amit Tiwari', N'TEAM LEADER', 20, 75000.0000, CAST(0xAA87000A AS SmallDateTime))
INSERT [dbo].[Teacher] ([Id], [Name], [Skills], [TotalStudents], [Salary], [AddedOn]) VALUES (4, N'KULDEEP KHARE', N'DYNAMIC CRM', 12, 200000.0000, CAST(0xAA8A02E3 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Table [dbo].[Membership_M]    Script Date: 07/30/2019 22:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Membership_M](
	[MembershipId] [int] NOT NULL,
	[MembershipName] [varchar](500) NULL,
	[Age] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[address] [varchar](500) NULL,
	[createDate] [smalldatetime] NULL,
	[createdby] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Membership_M] ([MembershipId], [MembershipName], [Age], [gender], [address], [createDate], [createdby]) VALUES (1, N'Aanand', N'45', N'male', N'kumrar', CAST(0xAA8D0000 AS SmallDateTime), 2)
INSERT [dbo].[Membership_M] ([MembershipId], [MembershipName], [Age], [gender], [address], [createDate], [createdby]) VALUES (2, N'Aafiya', N'5', N'female', N'deoria', CAST(0xAA8F0000 AS SmallDateTime), 2)
/****** Object:  Table [dbo].[Employee]    Script Date: 07/30/2019 22:42:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](100) NOT NULL,
	[Salary] [money] NULL,
	[Department] [varchar](50) NULL,
	[EmpImage] [varchar](500) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Salary], [Department], [EmpImage], [IsActive]) VALUES (1, N'Mukesh', 55000.0000, N'HR', N'thumb1.jpg', 1)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Salary], [Department], [EmpImage], [IsActive]) VALUES (2, N'Rahul', 75000.0000, N'IT', N'thumb2.jpg', 1)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Salary], [Department], [EmpImage], [IsActive]) VALUES (6, N'Nanhe Siddique', 36000.0000, N'IT', N'no-Image.jpg', 1)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [Salary], [Department], [EmpImage], [IsActive]) VALUES (9, N'AAFIYA SIDDIQUE', 0.0000, N'BABY ZONE', N'kajoragramhighschool.jpg', 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Default [DF__Teacher__AddedOn__00551192]    Script Date: 07/30/2019 22:42:17 ******/
ALTER TABLE [dbo].[Teacher] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO
