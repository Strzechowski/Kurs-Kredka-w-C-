USE [RafalStrzechowskiLab3]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 22.11.2017 22:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](31) NOT NULL,
	[Surname] [nvarchar](31) NOT NULL,
	[BirthDate] [date] NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cast]    Script Date: 22.11.2017 22:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cast](
	[Id] [int] NOT NULL,
	[FilmId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Film]    Script Date: 22.11.2017 22:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](63) NOT NULL,
	[ProdctionYear] [smallint] NOT NULL,
	[Duration] [smallint] NOT NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([Id], [Name], [Surname], [BirthDate]) VALUES (1, N'Emma', N'watson', CAST(N'1980-01-09' AS Date))
INSERT [dbo].[Actor] ([Id], [Name], [Surname], [BirthDate]) VALUES (2, N'Alan', N'Rickam', CAST(N'1990-01-23' AS Date))
INSERT [dbo].[Actor] ([Id], [Name], [Surname], [BirthDate]) VALUES (3, N'VALD', N'SADASD', CAST(N'1990-01-23' AS Date))
INSERT [dbo].[Actor] ([Id], [Name], [Surname], [BirthDate]) VALUES (4, N'Ryan', N'Gossling', CAST(N'1990-10-22' AS Date))
INSERT [dbo].[Actor] ([Id], [Name], [Surname], [BirthDate]) VALUES (5, N'Andrzej', N'Wajda', CAST(N'1960-07-23' AS Date))
SET IDENTITY_INSERT [dbo].[Actor] OFF
INSERT [dbo].[Cast] ([Id], [FilmId], [ActorId]) VALUES (1, 1, 1)
INSERT [dbo].[Cast] ([Id], [FilmId], [ActorId]) VALUES (2, 2, 3)
INSERT [dbo].[Cast] ([Id], [FilmId], [ActorId]) VALUES (3, 4, 5)
INSERT [dbo].[Cast] ([Id], [FilmId], [ActorId]) VALUES (4, 3, 5)
SET IDENTITY_INSERT [dbo].[Film] ON 

INSERT [dbo].[Film] ([Id], [Name], [ProdctionYear], [Duration]) VALUES (1, N'Harry Potter', 2010, 200)
INSERT [dbo].[Film] ([Id], [Name], [ProdctionYear], [Duration]) VALUES (2, N'Django', 2015, 200)
INSERT [dbo].[Film] ([Id], [Name], [ProdctionYear], [Duration]) VALUES (3, N'Dear Vincent', 2017, 120)
INSERT [dbo].[Film] ([Id], [Name], [ProdctionYear], [Duration]) VALUES (4, N'Baby Driver', 2016, 140)
INSERT [dbo].[Film] ([Id], [Name], [ProdctionYear], [Duration]) VALUES (5, N'Arnold', 1990, 100)
SET IDENTITY_INSERT [dbo].[Film] OFF
ALTER TABLE [dbo].[Cast]  WITH CHECK ADD  CONSTRAINT [FK_Cast_Actor] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actor] ([Id])
GO
ALTER TABLE [dbo].[Cast] CHECK CONSTRAINT [FK_Cast_Actor]
GO
ALTER TABLE [dbo].[Cast]  WITH CHECK ADD  CONSTRAINT [FK_Cast_Film] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Film] ([Id])
GO
ALTER TABLE [dbo].[Cast] CHECK CONSTRAINT [FK_Cast_Film]
GO
