/*** CREARE S2_Operation prima di lanciare questa query ***/

USE [S2_Operation]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 16/12/2023 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[IDComment] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[IDPost] [bigint] NOT NULL,
	[Text] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[IDComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Followers]    Script Date: 16/12/2023 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Followers](
	[IDFollower] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[IDFollow] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Followers] PRIMARY KEY CLUSTERED 
(
	[IDFollower] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 16/12/2023 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[IDLike] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[IDPost] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[IDLike] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 16/12/2023 23:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[IDPost] [bigint] IDENTITY(1,1) NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[Image] [varchar](250) NOT NULL,
	[Text] [varchar](500) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[IDPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([IDComment], [IDUser], [IDPost], [Text], [Date]) VALUES (10006, 20006, 20006, N'commento bellooo', CAST(N'2023-12-16T18:13:08.903' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Followers] ON 
GO
INSERT [dbo].[Followers] ([IDFollower], [IDUser], [IDFollow], [Date]) VALUES (10009, 20006, 20007, CAST(N'2023-12-16T18:17:39.187' AS DateTime))
GO
INSERT [dbo].[Followers] ([IDFollower], [IDUser], [IDFollow], [Date]) VALUES (10010, 20006, 20008, CAST(N'2023-12-16T18:17:43.317' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Followers] OFF
GO
SET IDENTITY_INSERT [dbo].[Likes] ON 
GO
INSERT [dbo].[Likes] ([IDLike], [IDUser], [IDPost], [Date]) VALUES (20013, 20006, 10007, CAST(N'2023-12-16T18:09:13.343' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Likes] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (8, 20007, N'1_638381871091910213_1ed8f99b-bf9c-4771-b85e-829b54f383c8.png', N'Il mio gatto bello!', CAST(N'2023-12-14T21:45:09.197' AS DateTime))
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (10006, 20008, N'1_638382454523528919_6d25983b-55fe-499c-9d77-d3cf9e46e221.png', N'Il mio gatto bello!', CAST(N'2023-12-15T13:57:32.357' AS DateTime))
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (10007, 20007, N'1_638382458831637972_8633b632-412f-4a4d-acaa-989aad0a0f8a.png', N'Il mio gatto bello!', CAST(N'2023-12-15T14:04:43.167' AS DateTime))
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (20006, 20006, N'20006_638383467694652068_4865604d-f2c7-4fc8-bbc3-912626011e55.png', N'Nuovo post ??????', CAST(N'2023-12-16T18:06:09.977' AS DateTime))
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (20007, 20006, N'20006_638383593139088920_77e7bf96-106b-475d-b430-1047f56e892a.png', N'Nuovo post ??????', CAST(N'2023-12-16T21:35:14.007' AS DateTime))
GO
INSERT [dbo].[Posts] ([IDPost], [IDUser], [Image], [Text], [Date]) VALUES (20008, 20006, N'20006_638383615849243400_fbffc07a-f9fd-4d04-8876-e6cb4dd6758c.png', N'Nuovo post ??????', CAST(N'2023-12-16T22:13:05.627' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts] FOREIGN KEY([IDPost])
REFERENCES [dbo].[Posts] ([IDPost])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Posts] FOREIGN KEY([IDPost])
REFERENCES [dbo].[Posts] ([IDPost])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Posts]
GO
USE [master]
GO
ALTER DATABASE [S2_Operation] SET  READ_WRITE 
GO
