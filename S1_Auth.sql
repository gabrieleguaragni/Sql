/*** CREARE S1_Auth prima di lanciare questa query ***/

USE [S1_Auth]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16/12/2023 23:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRole] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Description] [varchar](350) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 16/12/2023 23:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[IDUserRole] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[IDRole] [bigint] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[IDUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/12/2023 23:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDUser] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](25) NOT NULL,
	[Email] [varchar](320) NOT NULL,
	[Password] [varchar](128) NOT NULL,
	[Avatar] [varchar](250) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([IDRole], [Name], [Description]) VALUES (1, N'administrator', N'Can perform all operations')
GO
INSERT [dbo].[Roles] ([IDRole], [Name], [Description]) VALUES (4, N'developer', N'Can perform all operations except role assignment')
GO
INSERT [dbo].[Roles] ([IDRole], [Name], [Description]) VALUES (5, N'moderator', N'Can manage user-generated content')
GO
INSERT [dbo].[Roles] ([IDRole], [Name], [Description]) VALUES (6, N'customer', N'Can perform end-user operations')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([IDUserRole], [IDUser], [IDRole]) VALUES (20005, 20006, 1)
GO
INSERT [dbo].[UserRoles] ([IDUserRole], [IDUser], [IDRole]) VALUES (20007, 20007, 4)
GO
INSERT [dbo].[UserRoles] ([IDUserRole], [IDUser], [IDRole]) VALUES (20008, 20008, 5)
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([IDUser], [Username], [Email], [Password], [Avatar], [Date]) VALUES (20005, N'gabri', N'gabri@gmail.com', N'$2a$11$Kvim.kJWy1tlez0DAWqt4..s3nlZtglOxxHlzzOuGGRBgzICV/8J2', N'default.png', CAST(N'2023-12-16T18:01:13.557' AS DateTime))
GO
INSERT [dbo].[Users] ([IDUser], [Username], [Email], [Password], [Avatar], [Date]) VALUES (20006, N'administrator', N'administrator@gmail.com', N'$2a$11$HKqp9Jj6OUUb0CYLB.7gEeEdZ5Qaq9CMsRtcXAsyiobWcJyJAJ4gu', N'20006_638383593029039369_d1de8be2-4c86-4f74-afa8-e5e8eab348e2.png', CAST(N'2023-12-16T18:02:07.267' AS DateTime))
GO
INSERT [dbo].[Users] ([IDUser], [Username], [Email], [Password], [Avatar], [Date]) VALUES (20007, N'developer', N'developer@gmail.com', N'$2a$11$6zw07Ebjn3YtXGsSwStHG.G3pzYS7zZ5n8FNy/OvWEBDcmY3ZnIL2', N'default.png', CAST(N'2023-12-16T22:18:37.017' AS DateTime))
GO
INSERT [dbo].[Users] ([IDUser], [Username], [Email], [Password], [Avatar], [Date]) VALUES (20008, N'moderator', N'moderator@gmail.com', N'$2a$11$Wd76vwlvsCRKcBa3Y1txLe3zRrY.YthnPB5R/axHQ5tWZIXw0dBF2', N'default.png', CAST(N'2023-12-16T22:19:04.560' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Name]    Script Date: 16/12/2023 23:48:21 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [IX_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Email]    Script Date: 16/12/2023 23:48:21 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Username]    Script Date: 16/12/2023 23:48:21 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Roles] ([IDRole])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
USE [master]
GO
ALTER DATABASE [S1_Auth] SET  READ_WRITE 
GO
