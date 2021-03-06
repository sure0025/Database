USE [EJL89_DB]
GO
/****** Object:  Table [db_owner].[Pet]    Script Date: 14-11-2016 13:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_owner].[Pet](
	[PetID] [int] NOT NULL,
	[PetName] [varchar](100) NOT NULL,
	[PetType] [varchar](100) NOT NULL,
	[PetBreed] [varchar](100) NULL,
	[PetDOB] [varchar](100) NULL,
	[PetWeight] [float] NOT NULL,
	[OwnerID] [int] NOT NULL,
 CONSTRAINT [Pet_PK] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (1, N'King', N'Dog', N'Std. Poodle', N'21.02.2011', 25.5, 1)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (2, N'Teddy', N'Cat', N'Cashmere', N'01.02.2012', 10.5, 2)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (3, N'Fido', N'Dog', N'Std. Poodle', N'17.07.2010', 28.5, 1)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (4, N'AJ', N'Dog', N'Collie Mix', N'05.05.2011', 20.0, 3)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (5, N'Cedro', N'Cat', NULL, N'06.06.2009', 9.5, 2)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (6, N'Wooley', N'Cat', NULL, NULL, 9.5, 2)
GO
INSERT [db_owner].[Pet] ([PetID], [PetName], [PetType], [PetBreed], [PetDOB], [PetWeight], [OwnerID]) VALUES (7, N'Buster', N'Dog', N'Border Collie', N'11.12.2008', 25.0, 4)
GO
ALTER TABLE [db_owner].[Pet]  WITH CHECK ADD  CONSTRAINT [Pet_PetOwner_FK] FOREIGN KEY([OwnerID])
REFERENCES [db_owner].[Pet_Owner] ([OwnerID])
GO
ALTER TABLE [db_owner].[Pet] CHECK CONSTRAINT [Pet_PetOwner_FK]
GO
