USE [PMS]
GO
/****** Object:  Table [dbo].[employeeAccess]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeAccess](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accessLevel] [int] NULL,
 CONSTRAINT [PK_employeeAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeDepartment]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeDepartment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [nvarchar](100) NULL,
 CONSTRAINT [PK_employeeDepartment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRank]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rank] [nvarchar](100) NULL,
 CONSTRAINT [PK_employeeRank] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timeOff]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeOff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[timeType_id] [int] NULL,
	[reason] [nvarchar](200) NULL,
	[payVacation] [bit] NULL,
	[approved] [bit] NULL,
	[toDate] [date] NULL,
	[fromDate] [date] NULL,
	[workDayBegin] [time](7) NULL,
	[workDayEnd] [time](7) NULL,
	[dinnerBegin] [time](7) NULL,
	[month_id] [int] NULL,
 CONSTRAINT [PK_timeOff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timeType]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_timeType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[FIO] [nvarchar](100) NULL,
	[dateOfBirth] [date] NULL,
	[dateComing] [date] NULL,
	[id_rank] [int] NULL,
	[id_access] [int] NULL,
	[image] [image] NULL,
	[id_department] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employeeAccess] ON 

INSERT [dbo].[employeeAccess] ([id], [accessLevel]) VALUES (1, 1)
INSERT [dbo].[employeeAccess] ([id], [accessLevel]) VALUES (2, 2)
INSERT [dbo].[employeeAccess] ([id], [accessLevel]) VALUES (3, 3)
INSERT [dbo].[employeeAccess] ([id], [accessLevel]) VALUES (4, 4)
INSERT [dbo].[employeeAccess] ([id], [accessLevel]) VALUES (5, 5)
SET IDENTITY_INSERT [dbo].[employeeAccess] OFF
GO
SET IDENTITY_INSERT [dbo].[employeeDepartment] ON 

INSERT [dbo].[employeeDepartment] ([id], [department]) VALUES (1, N'Отдел разработки')
INSERT [dbo].[employeeDepartment] ([id], [department]) VALUES (2, N'Отдел тестирования')
INSERT [dbo].[employeeDepartment] ([id], [department]) VALUES (3, N'Отдел аналитики')
INSERT [dbo].[employeeDepartment] ([id], [department]) VALUES (4, N'Отдел HR')
INSERT [dbo].[employeeDepartment] ([id], [department]) VALUES (5, N'Отдел кадров')
SET IDENTITY_INSERT [dbo].[employeeDepartment] OFF
GO
SET IDENTITY_INSERT [dbo].[employeeRank] ON 

INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (1, N'Администратор')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (2, N'HR')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (3, N'Разработчик')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (4, N'Тестировщик')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (5, N'Прапор')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (6, N'Салага')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (7, N'Сержант')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (8, N'Рядовой')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (9, N'Дух')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (10, N'Ассасин')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (11, N'Маг')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (12, N'Целитель')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (13, N'Копьеносец')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (14, N'Хакер')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (15, N'Мимопроходил')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (16, N'УБОРЩИК')
INSERT [dbo].[employeeRank] ([id], [rank]) VALUES (17, N'Президент')
SET IDENTITY_INSERT [dbo].[employeeRank] OFF
GO
SET IDENTITY_INSERT [dbo].[timeOff] ON 

INSERT [dbo].[timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (1, 1, 1, N'asdasdasd', 0, 1, CAST(N'2023-03-15' AS Date), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (2, 2, 2, N'asdasdasda', 1, 1, CAST(N'2023-03-15' AS Date), CAST(N'2023-03-23' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (3, 3, 3, N'asdasdasds', 0, 1, CAST(N'2023-03-15' AS Date), NULL, CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(N'12:00:00' AS Time), NULL)
SET IDENTITY_INSERT [dbo].[timeOff] OFF
GO
SET IDENTITY_INSERT [dbo].[timeType] ON 

INSERT [dbo].[timeType] ([id], [type]) VALUES (1, N'Выходной')
INSERT [dbo].[timeType] ([id], [type]) VALUES (2, N'Отпуск')
INSERT [dbo].[timeType] ([id], [type]) VALUES (3, N'Отгул')
SET IDENTITY_INSERT [dbo].[timeType] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (1, N'Zexa', N'Zexa', N'Дубровский Алексей Михайлович', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 1, 2, NULL, 1)
INSERT [dbo].[Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (2, N'Boba', N'Boba', N'Погосов Владислав', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 15, 3, NULL, 2)
INSERT [dbo].[Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (3, N'Biba', N'Biba', N'Крутой Какойто Чел', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 13, 3, NULL, 2)
INSERT [dbo].[Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (4, N'Pavlov', N'Pavlov', N'ПОП ПУП ПИП1', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 13, 2, NULL, 4)
INSERT [dbo].[Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (5, N'PIP', N'PIP', N'ПОП ПУП ПИП2', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 12, 1, NULL, 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[timeOff]  WITH CHECK ADD  CONSTRAINT [FK_timeOff_timeType] FOREIGN KEY([timeType_id])
REFERENCES [dbo].[timeType] ([id])
GO
ALTER TABLE [dbo].[timeOff] CHECK CONSTRAINT [FK_timeOff_timeType]
GO
ALTER TABLE [dbo].[timeOff]  WITH CHECK ADD  CONSTRAINT [FK_timeOff_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[timeOff] CHECK CONSTRAINT [FK_timeOff_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeAccess] FOREIGN KEY([id_access])
REFERENCES [dbo].[employeeAccess] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_employeeAccess]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeDepartment] FOREIGN KEY([id_department])
REFERENCES [dbo].[employeeDepartment] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_employeeDepartment]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeRank] FOREIGN KEY([id_rank])
REFERENCES [dbo].[employeeRank] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_employeeRank]
GO
