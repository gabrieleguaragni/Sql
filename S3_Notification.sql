/*** CREARE S3_Notification prima di lanciare questa query ***/

USE [S3_Notification]
GO
/****** Object:  Table [dbo].[Critical]    Script Date: 16/12/2023 23:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Critical](
	[IDCritical] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Critical] PRIMARY KEY CLUSTERED 
(
	[IDCritical] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 16/12/2023 23:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[IDInfo] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[IDInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warning]    Script Date: 16/12/2023 23:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warning](
	[IDWarning] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Warning] PRIMARY KEY CLUSTERED 
(
	[IDWarning] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Critical] ON 
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (1, 20006, N'Someone has logged in', CAST(N'2023-12-16T18:44:10.367' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (2, 20006, N'Someone has logged in', CAST(N'2023-12-16T18:44:23.027' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (3, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:13:21.673' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (4, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:18:18.120' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (5, 20007, N'Someone has logged in', CAST(N'2023-12-16T22:18:38.120' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (6, 20008, N'Someone has logged in', CAST(N'2023-12-16T22:19:05.690' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (7, 20008, N'You have just been assigned the role of moderator', CAST(N'2023-12-16T22:20:44.057' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (8, 20007, N'You have just been assigned the role of developer', CAST(N'2023-12-16T22:20:58.803' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (9, 20008, N'You have just been removed the role of moderator', CAST(N'2023-12-16T22:25:39.680' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (10, 20008, N'You have just been assigned the role of moderator', CAST(N'2023-12-16T22:25:56.110' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (11, 20005, N'Someone has logged in', CAST(N'2023-12-16T22:26:19.933' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (12, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:26:26.743' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (13, 20005, N'Someone has logged in', CAST(N'2023-12-16T22:26:35.800' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (14, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:26:39.580' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (15, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:27:15.513' AS DateTime))
GO
INSERT [dbo].[Critical] ([IDCritical], [IDUser], [Message], [Date]) VALUES (16, 20006, N'Someone has logged in', CAST(N'2023-12-16T22:33:10.447' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Critical] OFF
GO
SET IDENTITY_INSERT [dbo].[Info] ON 
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (4, 10005, N'New follower', CAST(N'2023-12-16T16:05:48.160' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (5, 10005, N'New follower', CAST(N'2023-12-16T16:06:58.067' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (6, 10005, N'New follower', CAST(N'2023-12-16T16:07:10.830' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (7, 10005, N'New follower', CAST(N'2023-12-16T18:13:40.520' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (8, 1, N'New follower', CAST(N'2023-12-16T18:14:03.913' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (9, 1, N'New follower', CAST(N'2023-12-16T18:15:26.503' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (10, 1, N'New follower', CAST(N'2023-12-16T18:16:09.370' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (11, 2, N'New follower', CAST(N'2023-12-16T18:17:39.203' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (12, 1, N'New follower', CAST(N'2023-12-16T18:17:43.333' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (13, 20006, N'Avatar updated successfully', CAST(N'2023-12-16T21:35:23.263' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (14, 20006, N'Post created successfully', CAST(N'2023-12-16T21:35:23.427' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (15, 20006, N'Post created successfully', CAST(N'2023-12-16T22:13:05.903' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (16, 20007, N'Thank you for the registration', CAST(N'2023-12-16T22:18:37.987' AS DateTime))
GO
INSERT [dbo].[Info] ([IDInfo], [IDUser], [Message], [Date]) VALUES (17, 20008, N'Thank you for the registration', CAST(N'2023-12-16T22:19:05.560' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Info] OFF
GO
SET IDENTITY_INSERT [dbo].[Warning] ON 
GO
INSERT [dbo].[Warning] ([IDWarning], [IDUser], [Message], [Date]) VALUES (8, 3, N'Comment deleted because it doesn''t respect our policies', CAST(N'2023-12-16T16:11:00.963' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Warning] OFF
GO
USE [master]
GO
ALTER DATABASE [S3_Notification] SET  READ_WRITE 
GO
