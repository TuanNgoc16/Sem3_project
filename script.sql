USE [master]
GO
/****** Object:  Database [abcCV]    Script Date: 4/7/2023 2:06:53 AM ******/
CREATE DATABASE [abcCV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'abcCV', FILENAME = N'D:\App\MSSQL16.SQLEXPRESS\MSSQL\DATA\abcCV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'abcCV_log', FILENAME = N'D:\App\MSSQL16.SQLEXPRESS\MSSQL\DATA\abcCV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [abcCV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [abcCV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [abcCV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [abcCV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [abcCV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [abcCV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [abcCV] SET ARITHABORT OFF 
GO
ALTER DATABASE [abcCV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [abcCV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [abcCV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [abcCV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [abcCV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [abcCV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [abcCV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [abcCV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [abcCV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [abcCV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [abcCV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [abcCV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [abcCV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [abcCV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [abcCV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [abcCV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [abcCV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [abcCV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [abcCV] SET  MULTI_USER 
GO
ALTER DATABASE [abcCV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [abcCV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [abcCV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [abcCV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [abcCV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [abcCV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [abcCV] SET QUERY_STORE = ON
GO
ALTER DATABASE [abcCV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [abcCV]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Role] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Password] [nvarchar](100) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](255) NOT NULL,
	[Age] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Literacy] [nvarchar](255) NULL,
	[Majors] [nvarchar](255) NULL,
	[Graduate] [nvarchar](255) NULL,
	[Vacancy] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[AccountID] [int] NULL,
	[File] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate_list]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate_list](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [int] NULL,
	[can_id] [int] NULL,
	[Interview_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Levers] [int] NOT NULL,
	[Following] [float] NULL,
	[Title] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interview]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Inter_Date] [date] NULL,
	[Static] [nvarchar](255) NULL,
	[FullName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 4/7/2023 2:06:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Wage] [float] NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Date_create] [date] NOT NULL,
	[Modification] [date] NULL,
	[Job_description] [nvarchar](max) NULL,
	[Vacancy] [nvarchar](255) NULL,
	[Address] [nvarchar](max) NULL,
	[Tag] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[CompanyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230403083556_MyMigration', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Email], [Password], [Role]) VALUES (1, N'ngocgai@gmail.com', N'12345678', N'staff')
INSERT [dbo].[Account] ([ID], [Email], [Password], [Role]) VALUES (2, N'vinhdz@gmail.com', N'12345678', N'employ')
INSERT [dbo].[Account] ([ID], [Email], [Password], [Role]) VALUES (1002, N'pnggoc16@gmail.com', N'123', N'admin 1')
INSERT [dbo].[Account] ([ID], [Email], [Password], [Role]) VALUES (1003, N'pnggoc16@gmail.com', N'123', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0fc23d44-dfbc-481c-9585-030a608a709e', NULL, NULL, N'pn2ggoc16@gmail.com', N'PN2GGOC16@GMAIL.COM', N'PN2GGOC16@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEYtFmO+OOt43bUE4HrYagfYqMCGhiZkYrCb1pn3rdPEkRpKbwTjLRX8f1oZODV7AQ==', N'72H3B5CKVMQNU4BCYMIJIK3GBOYTPBM2', N'7a665395-301d-4c90-a7ac-78bb4bd77f3c', N'09194823000', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'14702f25-577d-48e1-8072-2580664bb9aa', NULL, NULL, N'vinhnguvclluon@gmail.com', N'VINHNGUVCLLUON@GMAIL.COM', N'VINHNGUVCLLUON@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIXUMwglRBDinrF+JjloHIuydyJaLW/6vgGuRpmesGiCqnciRhBapQ0xGwlsVjl96g==', N'YMRPGGA4K4LU6ZWYF7OWCXLNQZ4UMDFN', N'84bbb9aa-0d18-47de-a137-6344ac64201c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4520f633-51a8-4476-ae0e-130dcddf3a68', NULL, NULL, N'pnggoc16666@gmail.com', N'PNGGOC16666@GMAIL.COM', N'PNGGOC16666@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMw7MOFFPbJQpnfP8K6R0tV24vyRGAS1T2avvNcGLH5HYxwU4OMFRLjuPPUJxmqwtw==', N'QMFVMJTKR2QDILKSZQS4QVHFQFDADP2K', N'20832e39-55c6-4375-ab10-325fd06ac1bb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a034401d-2db3-4f28-a2fa-e7288a387f8a', NULL, NULL, N'pnggooc16@gmail.com', N'PNGGOOC16@GMAIL.COM', N'PNGGOOC16@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMOoBDpk/WppA8d9TFVS8IjW0FqtnXtMaP/EY1By+WIJT+KkCAuLjYVyC9ZkY48Hig==', N'FZXICCQTTQ7RX65O2EASGQFEQZC46V6F', N'18fa3004-d799-4e02-8e42-0d2aa0040561', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'af2e91a6-15aa-4040-a764-2c8b8d80418a', NULL, NULL, N'pnggoc1666@gmail.com', N'PNGGOC1666@GMAIL.COM', N'PNGGOC1666@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJorrzkyd0mzqNjtXFrF5ErIkfKcgfsiCeKRfeO4V6rZe+4N5ISxiky4wjQfIbUvJg==', N'AOCKHFZRJH76CWEE5ERRJC6QBIZUT6KI', N'c20aff79-e4d2-4444-9427-a3d555103d59', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e1f6f4e9-a90d-41e3-931f-671cb5715986', NULL, NULL, N'pnggoc168@gmail.com', N'PNGGOC168@GMAIL.COM', N'PNGGOC168@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOWl5nOAXcSob8nWB0qx5ayG5kqsns0a5Q62R0ohyS3vvHsT2J6vh1FtO0XB2P56sA==', N'WKETA3AF44WR2XQZAJSCHYFWI5BLLWVI', N'e7361a46-5299-4aef-9bd4-d19b3baa4638', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f0276bb0-de1a-4cc4-b197-bb7bc4c49098', NULL, NULL, N'pnggoc16@gmail.com', N'PNGGOC16@GMAIL.COM', N'PNGGOC16@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJJgQkNZwx3hS9Txi/iIJgcRKL+NMTArAvD3wsDZBmzQMTBqko50S4WpBLtZprzk6g==', N'WX6UF3JIXT3YHGYCULAAKP6BKE6SB25M', N'791442ac-90a4-4275-a269-2ea4c454083b', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (1, N'Nguyen Van Anh', 20, N'Hà Nội', N'0986785603', N'High School', N'Game', N'High School', N'Leader', N'Trở thành đơn vị cung cấp giải pháp Công nghệ giúp kết nối và phát triển nguồn nhân lực hàng đầu tại Việt Nam', 1, NULL)
INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (2, N'Trần Văn Dũng', 21, N'Thái Bình', N'09452237665', N'High School1', N'Sql', N'High School1', N'Member', N'Nâng cấp toàn diện Nền tảng tuyển dụng ứng dụng sâu trí thông minh nhân tạo. Đa dạng hóa các sản phẩm công nghệ trong cùng hệ sinh thái Quản trị nhân sự.', 2, NULL)
INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (1012, N'Pham Tuấn Ngoc', 11, N'354', N'0919482305', N'11', N'11', N'11', N'11', N'11', NULL, N'code.docx')
INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (1013, N'Pham Tuấn Ngoc', 22, N'354', N'0919482305', N'11', N'abc', N'dd', N'abc', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate_list] ON 

INSERT [dbo].[Candidate_list] ([ID], [job_id], [can_id], [Interview_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Candidate_list] ([ID], [job_id], [can_id], [Interview_id]) VALUES (2, 2, 2, 2)
INSERT [dbo].[Candidate_list] ([ID], [job_id], [can_id], [Interview_id]) VALUES (3, 1, 1, 1)
INSERT [dbo].[Candidate_list] ([ID], [job_id], [can_id], [Interview_id]) VALUES (4, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Candidate_list] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (1, 1, 1000, N'Lập trình')
INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (2, 2, 800, N'Thiết kế')
INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (3, 3, 850, N'Giảng dạy')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([ID], [Name]) VALUES (1, N'FPT Telecom')
INSERT [dbo].[Company] ([ID], [Name]) VALUES (2, N'Sunway Alohal')
INSERT [dbo].[Company] ([ID], [Name]) VALUES (3, N'Viettel')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Interview] ON 

INSERT [dbo].[Interview] ([ID], [Inter_Date], [Static], [FullName]) VALUES (1, CAST(N'2020-02-01' AS Date), N'done', N'Tuan Ngoc')
INSERT [dbo].[Interview] ([ID], [Inter_Date], [Static], [FullName]) VALUES (2, CAST(N'2020-02-04' AS Date), N'not done', N'Anh Quan')
INSERT [dbo].[Interview] ([ID], [Inter_Date], [Static], [FullName]) VALUES (3, CAST(N'2020-03-05' AS Date), N'done', N'Vinh ')
INSERT [dbo].[Interview] ([ID], [Inter_Date], [Static], [FullName]) VALUES (4, CAST(N'2023-04-07' AS Date), N'chua hoan thanh', N'Minh Tuan')
INSERT [dbo].[Interview] ([ID], [Inter_Date], [Static], [FullName]) VALUES (10, CAST(N'2023-04-11' AS Date), N'chua hoan thanh', N'Pham Tuấn Ngoc3')
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (1, N'Giảng viên lập trình game', 1000, N'hinhanhfpt.jpg', CAST(N'2019-10-02' AS Date), CAST(N'2019-12-05' AS Date), N'Giảng dạy một trong các học phần về:
1. Lập trình Game: 2D và 3D đa nền tảng Unity (PC/Mobile)
2. Xây dựng Game AR và VR với Unity
- Thực hiện các công việc khác theo sự phân công của CBQL', N'Nhân viên', N'Cầu Giấy - Hà Nội', N'game', 1, 1)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (2, N'Nhân viên thiết kế tài liệu', 2000, N'hinhanhsunway.jpg', CAST(N'2019-12-03' AS Date), CAST(N'2019-12-19' AS Date), N'1. Thiết kế, chỉnh sửa hình ảnh, dựng video phù hợp với từng dự án, sự kiện khác nhau của Trung tâm đào tạo.
2. Xây dựng kế hoạch, tài liệu videos giảng dạy
3. Làm phim tài liệu Elearning
4. Thông kê dữ liệu đào tạo và báo cáo Trưởng bộ phận
5. Thực hiện các công việc khác theo yêu cầu của TBP
6. Làm việc tại Trung tâm đào tạo.', N'Nhân Viên', N'Hà Đông - Hà Nội', N'thietke', 2, 2)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (3, N'Gia sư', 1500, N'hinhanhgs.jpg', CAST(N'2020-02-01' AS Date), CAST(N'2020-03-02' AS Date), N' là hình thức 1 giáo viên dạy kèm 1 hoặc nhiều học viên với chương trình học được thiết kế theo yêu cầu để mức độ hiệu quả cao.
Gia sư giúp đánh giá năng lực học sinh, củng cố kiến thức cơ bản và dạy nâng cao theo nhu cầu của người học.
Gia sư chia thành các nhóm: ôn thi cơ bản, ôn thi tốt nghiệp, ôn thi đại học, ôn Chuyên…
Gia sư dạy về mảng ngoại ngữ: ôn thi HSG ngoại ngữ, ôn thi lấy chứng chỉ quốc tế như Ielts, Toeic…
Gia sư đồng hành và gắn bó lâu dài với lớp học mình nhận, đánh giá, chọn lọc và điều chỉnh phù hợp giúp các em tiến bộ từng ngày, cam kết đầu ra cho học sinh và phụ huynh như mong muốn.', N'Gia sư', N'Đống Đa - Hà Nội', N'giasu', 3, 3)
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/7/2023 2:06:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Candidate_list]  WITH CHECK ADD FOREIGN KEY([can_id])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[Candidate_list]  WITH CHECK ADD FOREIGN KEY([Interview_id])
REFERENCES [dbo].[Interview] ([ID])
GO
ALTER TABLE [dbo].[Candidate_list]  WITH CHECK ADD FOREIGN KEY([job_id])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([CatID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
USE [master]
GO
ALTER DATABASE [abcCV] SET  READ_WRITE 
GO
