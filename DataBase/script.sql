USE [HostelSystem]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alotment]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alotment](
	[AlottmentID] [int] NOT NULL,
	[stuID] [varchar](255) NULL,
	[roomID] [int] NULL,
	[Status] [bit] NULL,
	[DateOfAllotment] [datetime] NULL,
	[DateOfClearance] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AlottmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Date_Of_Birth] [nvarchar](max) NULL,
	[CNIC] [nvarchar](max) NULL,
	[contact_no] [nvarchar](max) NULL,
	[CGPA] [nvarchar](4) NULL,
	[Registeration_No] [nvarchar](max) NULL,
	[type] [bit] NULL,
	[CityID] [int] NULL,
	[BloodGroupID] [int] NULL,
	[DepartmentsID] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BloodGroup]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BloodGroup](
	[BloodGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BloodGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campus](
	[CampusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CampusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Countryid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[CNIC] [varchar](255) NOT NULL,
	[loginID] [int] NULL,
	[Name] [varchar](255) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[cityID] [int] NULL,
	[contactNo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CNIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Features]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Features](
	[FeaturesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeaturesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hostel]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hostel](
	[HostelID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HostelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HostelFeatures]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelFeatures](
	[HFID] [int] IDENTITY(1,1) NOT NULL,
	[Hid] [int] NULL,
	[Fid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HostelResident]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelResident](
	[HRID] [int] IDENTITY(1,1) NOT NULL,
	[Hid] [int] NULL,
	[Rid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[loginID] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Status] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[loginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Residents]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Residents](
	[ResidentsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResidentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeid] [int] NULL,
	[Hostelid] [int] NULL,
	[TotalRooms] [int] NOT NULL,
 CONSTRAINT [PK__Room__328639198887F12E] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/11/2018 12:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[CNIC] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DateOFBirth] [datetime] NULL,
	[ContactNo] [varchar](255) NULL,
	[BGid] [int] NULL,
	[Cityid] [int] NULL,
	[CGPA] [float] NULL,
	[Session] [varchar](4) NULL,
	[Deptid] [int] NULL,
	[loginID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CNIC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD  CONSTRAINT [FK__Alotment__roomID__38996AB5] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Alotment] CHECK CONSTRAINT [FK__Alotment__roomID__38996AB5]
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD  CONSTRAINT [FK__Alotment__roomID__398D8EEE] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Alotment] CHECK CONSTRAINT [FK__Alotment__roomID__398D8EEE]
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD  CONSTRAINT [FK__Alotment__roomID__3A81B327] FOREIGN KEY([roomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Alotment] CHECK CONSTRAINT [FK__Alotment__roomID__3A81B327]
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD FOREIGN KEY([stuID])
REFERENCES [dbo].[Student] ([CNIC])
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD FOREIGN KEY([stuID])
REFERENCES [dbo].[Student] ([CNIC])
GO
ALTER TABLE [dbo].[Alotment]  WITH CHECK ADD FOREIGN KEY([stuID])
REFERENCES [dbo].[Student] ([CNIC])
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([Countryid])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([Countryid])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([Countryid])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Campus] ([CampusID])
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Campus] ([CampusID])
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([Cid])
REFERENCES [dbo].[Campus] ([CampusID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([cityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([cityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([cityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Fid])
REFERENCES [dbo].[Features] ([FeaturesID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Fid])
REFERENCES [dbo].[Features] ([FeaturesID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Fid])
REFERENCES [dbo].[Features] ([FeaturesID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelFeatures]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Rid])
REFERENCES [dbo].[Residents] ([ResidentsID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Rid])
REFERENCES [dbo].[Residents] ([ResidentsID])
GO
ALTER TABLE [dbo].[HostelResident]  WITH CHECK ADD FOREIGN KEY([Rid])
REFERENCES [dbo].[Residents] ([ResidentsID])
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__Hostelid__59063A47] FOREIGN KEY([Hostelid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__Hostelid__59063A47]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__Hostelid__59FA5E80] FOREIGN KEY([Hostelid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__Hostelid__59FA5E80]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__Hostelid__5AEE82B9] FOREIGN KEY([Hostelid])
REFERENCES [dbo].[Hostel] ([HostelID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__Hostelid__5AEE82B9]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomTypeid__5BE2A6F2] FOREIGN KEY([RoomTypeid])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomTypeid__5BE2A6F2]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomTypeid__5CD6CB2B] FOREIGN KEY([RoomTypeid])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomTypeid__5CD6CB2B]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK__Room__RoomTypeid__5DCAEF64] FOREIGN KEY([RoomTypeid])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK__Room__RoomTypeid__5DCAEF64]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([BGid])
REFERENCES [dbo].[BloodGroup] ([BloodGroupID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([BGid])
REFERENCES [dbo].[BloodGroup] ([BloodGroupID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([BGid])
REFERENCES [dbo].[BloodGroup] ([BloodGroupID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Cityid])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Cityid])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Cityid])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Deptid])
REFERENCES [dbo].[Departments] ([DepartmentsID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Deptid])
REFERENCES [dbo].[Departments] ([DepartmentsID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Deptid])
REFERENCES [dbo].[Departments] ([DepartmentsID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([loginID])
REFERENCES [dbo].[Login] ([loginID])
GO
