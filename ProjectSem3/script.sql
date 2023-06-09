USE [abcCV]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Candidate]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Candidate_list]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Company]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Interview]    Script Date: 4/10/2023 10:23:08 PM ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 4/10/2023 10:23:08 PM ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'14702f25-577d-48e1-8072-2580664bb9aa', NULL, NULL, N'vinhnguvclluon@gmail.com', N'VINHNGUVCLLUON@GMAIL.COM', N'VINHNGUVCLLUON@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIXUMwglRBDinrF+JjloHIuydyJaLW/6vgGuRpmesGiCqnciRhBapQ0xGwlsVjl96g==', N'YMRPGGA4K4LU6ZWYF7OWCXLNQZ4UMDFN', N'84bbb9aa-0d18-47de-a137-6344ac64201c', N'0919482305', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4520f633-51a8-4476-ae0e-130dcddf3a68', NULL, NULL, N'pnggoc16666@gmail.com', N'PNGGOC16666@GMAIL.COM', N'PNGGOC16666@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMw7MOFFPbJQpnfP8K6R0tV24vyRGAS1T2avvNcGLH5HYxwU4OMFRLjuPPUJxmqwtw==', N'QMFVMJTKR2QDILKSZQS4QVHFQFDADP2K', N'20832e39-55c6-4375-ab10-325fd06ac1bb', N'09194823000', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'63fb4741-7dbe-4937-bd75-f846022aac5a', NULL, NULL, N'pnggoc17@gmail.com', N'PNGGOC17@GMAIL.COM', N'PNGGOC17@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGWVidhxgZIY7XsFW+aFIPOdvGlHFlKwRNu4ViZ2xH1YELY8gJbxrhqungWKJwgcEA==', N'VFBJ7U2NJQNXK6BO46XIFIECOC2KIW2G', N'dd95b00a-5734-475f-84e6-cb9b08510d25', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [Password], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cbf4af07-356b-4102-af30-5ac5e4cd6701', NULL, NULL, N'ptngoc03@gmail.com', N'PTNGOC03@GMAIL.COM', N'PTNGOC03@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELb7lKWQvKBN1aPhGZU4kjc0mCKlOPTkX6pC90lJGs2xD88/rsRz+sQILR/d1++lxw==', N'MGBDLGCPQBFKEXXNWY42WGT6ARDD7P7U', N'0fa41333-0e59-484a-b3f2-8b0b2aea87a8', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (1, N'Nguyen Van Anh', 20, N'Hà Nội', N'0986785603', N'High School', N'Game', N'High School', N'Leader', N'Become a leading provider of Technology solutions to connect and develop human resources in Vietnam', 1, NULL)
INSERT [dbo].[Candidate] ([ID], [Fullname], [Age], [Address], [Phone], [Literacy], [Majors], [Graduate], [Vacancy], [Description], [AccountID], [File]) VALUES (2, N'Tran Van Dung', 21, N' viet nam', N'09452237665', N'High School1', N'Sql', N'High School1', N'Member', N'Comprehensive upgrade of Artificial Intelligence Deep Application Recruitment Platform. Diversify technology products in the same HR management ecosystem.', 2, NULL)
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

INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (1, 1, 1000, N'Program')
INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (2, 2, 800, N'Design')
INSERT [dbo].[Category] ([ID], [Levers], [Following], [Title]) VALUES (3, 3, 850, N'Teaching')
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
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (1, N'Game Programming Instructor', 1000, N'blog-3-370x270.jpg', CAST(N'2019-10-02' AS Date), CAST(N'2019-12-05' AS Date), N'Job Description Research, research new game ideas, market and gaming trends of players; Conceptualize, design a scenario with full details of the game as required: features, content, interface...; Level building, evaluation/analysis, game balance; Coordinate with the Artist and Developer department to develop and perfect the ideas for the game; Monitor metrics, reviews, feedback from players to adjust Gameplay accordingly; Analyze in-game indicators to give directions for product improvement; Candidate requirements must have at least 2 years of experience in the field of game design; Mastering game mechanics, game balancing, gameplay design, level design; Having an overview of the Game market in general as well as a good grasp of the needs of game players; Creative skills and good logic ability; Good use of Photoshop or related software to express game design ideas; Knowing how to use Unity is an advantage; Love playing games, being open, interacting and combining work with teammates; Ability to self-research and learn new technologies; Reading and understanding English documents is an advantage; Benefits Working in a dynamic game company, developing, leading in the field of mobile games in the Vietnamese game market. There are many challenges and opportunities for regular training and professional improvement; To fully enjoy the regimes in accordance with the company''s regulations and current laws; To pay social insurance, health insurance and unemployment insurance premiums according to state regulations; Annual leave as prescribed for employees of the state; Enjoy rich and diversified welfare policies and collective cultural activities: Participating in periodical health check-ups, 24/24 health insurance; Participate in the company''s exciting collective activities: Team building, festivals, travel, picnics, year-end Gala, ... Working in a dynamic, modern environment and accessing many new technologies with new technologies. young colleagues – full of enthusiasm; There are many opportunities for advancement, development and long-term stability. BONUS: 13th month bonus (minimum 1 month salary) and project KPI;', N'Staff', N'Cau Giay District, Hanoi', N'game', 1, 1)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (2, N'XIPAT FLEXIBLE SOLUTIONS COMPANY ', 2000, N'hinhanhgs.jpg', CAST(N'2019-12-03' AS Date), CAST(N'2019-12-19' AS Date), N'Job description • Develop Apps for Shopify / WooCommerce e-commerce platforms  • Responsible for completing products on schedule, ensuring quality  • Exchange and report work with the manager  • Exchange ideas with Artist to improve UI/UX for Apps  • Together with the team to complete/add features for Apps  • Support colleagues to complete the product together  Candidate Requirements • From 01 year of experience Reactjs  • Knowledge of Javascript, HTML5, CSS3, SASS, SCSS, Bootstrap CSS  • Experience working with Git tools, Restful API, GraphQL.  • Knowledge of design trends: Metro, Flat, Material, Fluent… is an advantage.  • Agile, eager to learn  Right - Salary and bonus system  Competitive salary, attractive bonus, 13th month salary Review salary 2 times/year Holiday bonus, Tet bonus, Quarterly bonus, work performance bonus - Remuneration:  Team building quarterly, travel 1-2 times/year 12 - 15 days of leave/year Periodic health check 1 time / year Free tea, tea, coffee every day - Work environment:  Young, dynamic, comfortable creative Working in a product development environment, owning the product in charge, participating in the process of bringing ideas, improving product innovation - Training and developing:  The company supports learning up to 25 million/person/year Be oriented on a personal development path', N'Staff', N'Ha Dong - Hanoi', N'design', 2, 2)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (3, N'Graphic Designer, Media - Marketing', 1500, N'blog-1-370x270.jpg', CAST(N'2020-02-01' AS Date), CAST(N'2020-03-02' AS Date), N'Job description - Design images, make videos when assigned by superiors.  - Filming the actual project after completion at the request of the superior.  - Editing images and videos of works posted on Facebook, Youtube, Tiktok pages of the company  Candidate Requirements - Know how to use Photoshop, Prime  - Know how to manage Facebook, Youtube and post content of images and videos.  - Having skills in creative design of images and videos on Photoshop, Premiere, Capcut, Canva tools is an advantage  - Having knowledge about building Tiktok is an advantage    - Have basic knowledge of SEO or content building.  Right - Salary from 8 million to 10 million (negotiable according to candidate''s capacity.)  - To enjoy full benefits regimes as prescribed by Law: Social insurance, health insurance, unemployment insurance….  - The salary is agreed on the basis of working capacity, professional experience, work efficiency and working spirit and attitude of employees.  - 13th month salary bonus.  - Contracted.  - 12 days leave/year.  - Professional working environment, friendly colleagues - helping each other to develop together.  - Trained and mentored.', N'Tutoring at home', N'Dong Da - Hanoi', N'Tutoring at home', 3, 3)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (2003, N'General Accountant', 2000, N'blog-4-370x270.jpg', CAST(N'2023-04-13' AS Date), CAST(N'2023-04-21' AS Date), N'Job description - Monitor and manage debt to support debt recovery  - Monitor and calculate the actual import and export costs & production for each product.  - Check and monitor inventory movement  - Calculating salaries for officials and employees and deductions according to salary.  - Prepare expense reports. Accounting for those allocations.  - Calculating and deducting depreciation expense for fixed assets. Accounting for that depreciation.  - Perform allocation and transfer entries.  - Prepare periodic tax reports (quarterly, annually)  - Internal monitoring and reporting.  - Make entries at the beginning of the new financial year such as: Paying license tax, Carrying forward profit and loss of the old fiscal year, Accounting for license tax expenses in the new fiscal year.  - Prepare financial statements, balance sheet of annual accounts, print books according to regulations,..  - Ability to establish and maintain relationships with external parties such as Tax Department, banks, customers, suppliers.    Candidate Requirements - At least 2 years of experience in a similar position  - Quick, polite, gentle demeanor  - Proficient in office computer skills and accounting software  - High sense of responsibility with work', N'Manager', N'Ha noi', N'Manager', 1, 1)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (2004, N'Japanese Staff', 9000, N'japan-manufacturer-kyocera.jpg', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-29' AS Date), N'Job description - NO experience required, will be trained for the first 1 month after receiving the job  - Follow Internet Advertising (SEM, DISPLAY,...)  - Receive advertising content from parent company in Japan  - Set up, install and play ads on media such as Google, Yahoo, Facebook,...  - Synthesize advertising data from the above media into a report to analyze advertising results and send to customers in Japan  Candidate Requirements - Language level from N2, N3 Hard and above. No JLPT (Trained From The Beginning) required  - Just be able to communicate confidently  - Basic Excel skills. (If no experience will be trained)  - Love working on computers  - No degree & experience required. (Join the company will be trained more about skills and profession)  - Enthusiastic, eager to learn  - Have a future-oriented long-term working at the company  - Age: up to 35 years old    Interview process: 3 rounds PV (online support for candidates in need)  - Application review ➞ Seminar round Round 1: Human resources Round 2: Department manager Round 3: Director  - Curriculum Vitae (CV in Japanese) please fill in the following information:  - Image: Close-up of the face. Serious, well-adjusted shooting  - Full date of birth  - Provide full information (Specific time of the learning and working process)  - Working process part: Specify the content of the work in charge  - Wish; Career goals  - Development orientation & future goals  - Strengths and weaknesses  - The proudest thing that I have achieved so far  - Reason for applying  - Desired salary (gross/net)', N'Staff', N'Ho Chi Minh City', N'Japanese Staff', 1, 1)
INSERT [dbo].[Job] ([ID], [Title], [Wage], [Image], [Date_create], [Modification], [Job_description], [Vacancy], [Address], [Tag], [CatID], [CompanyID]) VALUES (2005, N'Sales Managers of Provinces', 8000, N'anhbiaheadding.jpg', CAST(N'2023-04-09' AS Date), CAST(N'2023-04-21' AS Date), N'Job description > Executive duties: The Sales Director is responsible for defining the business direction towards the sustainable development of CEVPharma as well as building an efficient growth process and infrastructure. The Sales Manager leads the sales, marketing, PR and customer relations teams to ensure that the functions of CEVPharma are fully implemented and that the working relationships within CEVPharma are maintained to help CEVPharma achieve strategic objectives. The Sales Manager leads the district sales of 63 provinces in drafting, implementing and evaluating decisions made regarding CEVPharma''s business operations. > Marketing tasks: Marketing is also one of the areas that the Sales Director needs to pay attention to. KHM will lead the development of marketing strategies focusing on market penetration, sales growth, with special emphasis on attracting customers to buy and targeting market demand. When strategies are implemented, KHM is also the one who monitors CEVPharma''s marketing performance and intervenes when necessary. Because of this task, the Sales Director in many cases will have a starting point as a Marketing staff. > Business mission: For this task, the Sales Manager works with the design and development teams to define what product features can be marketed, as well as maintain CEVPharma brand, Vimedimex brand through development and marketing of new products, responsible for the effectiveness and sales of each product. - Sales manager is also a person who looks for sales channels that can be used to achieve business development goals, such as internal sales, direct sales, sales through retailers, sales. through CEVPharma''s Distributor. - Not only interested in planning and monitoring the process based on efficiency evaluation factors, these factors can be proposed by the Sales Director or based on existing factors that are adjusted. to suit CEVPharma''s business activities. Make planning decisions related to business issues, including sales, marketing, customer care. > Sustainable growth mission: Together with senior managers, to determine the direction to develop strategies to achieve the biggest goal of sustainable growth, expand the scale of operation according to the mechanism non-competitive, in order to create business opportunities in line with the revenue growth target on CEVPharma. Sales Managers do not stand still and be satisfied with the existing market, but develop new markets, build close relationships with customers to buy, to find holes in the business that KHM is get. Business Director always seeks to stay ahead of the market, always grasps business development trends, is responsible for building short-term and long-term financial resources for the goal of maximum cost savings, revenue growth and sustainable development on CEVPharma. > Human resource development task: Along with the task of developing buying customers and growing revenue, the Business Director plays the role of a Captain to lead sales staff to enter the B2B e-commerce transaction market on a single platform. Application platform and mastering the world''s most modern technologies Oracle Netsuite, Salesforce CDP deployed on Amazon Web Services cloud computing infrastructure.  Candidate Requirements - University graduate or above majoring in: Economics, Business Administration, Marketing, Commerce or other equivalent majors. - Have at least 5 years of experience in the business field, of which at least 3 years of experience in a management position. - Good leadership and planning skills. - Ability to identify, analyze and evaluate the market. - Ability to communicate, convey information and solve problems, organize a good team. - Honesty, initiative, creativity, responsibility and decisiveness in work; Able to withstand high pressure at work and accept frequent business trips. - Determine long-term working commitment. - Proficient in the use of office computers and specialized software; Good English communication is a top priority.', N'Manager', N'Da Nang City', N'Sales Managers of Provinces', 1, 1)
SET IDENTITY_INSERT [dbo].[Job] OFF
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
