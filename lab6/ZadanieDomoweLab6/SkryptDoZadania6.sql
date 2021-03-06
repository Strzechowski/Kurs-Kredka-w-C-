USE [ZadanieDomoweLab5]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 18.12.2017 01:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfGame] [nvarchar](31) NOT NULL,
	[LevelOfDifficulty] [nvarchar](31) NULL,
	[StatisticsID] [int] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonalRanking]    Script Date: 18.12.2017 01:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalRanking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_PersonalRanking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 18.12.2017 01:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfViews] [int] NOT NULL,
	[TimeSpendInGame] [int] NOT NULL,
 CONSTRAINT [PK_Statistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfos]    Script Date: 18.12.2017 01:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](31) NOT NULL,
	[Surname] [nvarchar](31) NOT NULL,
	[EyeColor] [nvarchar](31) NULL,
	[FavouriteAnimal] [nvarchar](31) NULL,
 CONSTRAINT [PK_UserInfos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([ID], [NameOfGame], [LevelOfDifficulty], [StatisticsID]) VALUES (1, N'GuessTheNumber', N'Easy', 3)
INSERT [dbo].[Games] ([ID], [NameOfGame], [LevelOfDifficulty], [StatisticsID]) VALUES (2, N'Chess', N'Hard', 1)
INSERT [dbo].[Games] ([ID], [NameOfGame], [LevelOfDifficulty], [StatisticsID]) VALUES (3, N'Puzzle', N'Easy', 2)
SET IDENTITY_INSERT [dbo].[Games] OFF
SET IDENTITY_INSERT [dbo].[PersonalRanking] ON 

INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (4, 7, 2)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (12, 3, 7)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (13, 5, 6)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (14, 5, 5)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (16, 7, 13)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (18, 9, 11)
INSERT [dbo].[PersonalRanking] ([ID], [Score], [UserID]) VALUES (19, 4, 14)
SET IDENTITY_INSERT [dbo].[PersonalRanking] OFF
SET IDENTITY_INSERT [dbo].[Statistics] ON 

INSERT [dbo].[Statistics] ([ID], [NumberOfViews], [TimeSpendInGame]) VALUES (1, 400, 1500)
INSERT [dbo].[Statistics] ([ID], [NumberOfViews], [TimeSpendInGame]) VALUES (2, 350, 404)
INSERT [dbo].[Statistics] ([ID], [NumberOfViews], [TimeSpendInGame]) VALUES (3, 1000, 1654)
SET IDENTITY_INSERT [dbo].[Statistics] OFF
SET IDENTITY_INSERT [dbo].[UserInfos] ON 

INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (1, N'Rafal', N'Kowalski', N'Zielone', N'Zebra')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (2, N'Maciej', N'Nowak', N'Niebieskie', N'Pies')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (3, N'Łukasz', N'Wojtaszek', N'Zielone', N'Glonojad')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (4, N'Tadeusz', N'Krawczyk', N'Piwne', N'Dzik')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (5, N'Bob', N'Budowniczy', N'Niebieskie', N'Kukułka')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (6, N'Tommy', N'Jones', N'Brązowe', N'Bocian')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (7, N'Bruce', N'Lee', N'Szare', N'Niedźwiedź')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (8, N'AAA', N'bbb', N'nie podano', N'nie podano')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (9, N'Paweł', N'Luboczkin', N'nie podano', N'nie podano')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (10, N'Boby', N'Koby', N'Niebieskie', N'Struś')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (11, N'Sylwester', N'Stalone', N'nie podano', N'nie podano')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (12, N'XXX', N'PussyDestroyer', N'nie podano', N'nie podano')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (13, N'Paweł', N'Luboczkin', N'nie podano', N'Żbik')
INSERT [dbo].[UserInfos] ([ID], [FirstName], [Surname], [EyeColor], [FavouriteAnimal]) VALUES (14, N'Paweł', N'Wielki', N'nie podano', N'Borsuk')
SET IDENTITY_INSERT [dbo].[UserInfos] OFF
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Statistics] FOREIGN KEY([StatisticsID])
REFERENCES [dbo].[Statistics] ([ID])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Statistics]
GO
ALTER TABLE [dbo].[PersonalRanking]  WITH CHECK ADD  CONSTRAINT [FK_PersonalRanking_UserInfos] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfos] ([ID])
GO
ALTER TABLE [dbo].[PersonalRanking] CHECK CONSTRAINT [FK_PersonalRanking_UserInfos]
GO
