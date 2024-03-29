

GO
/****** Object:  Table [employeeAccess]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE DATABASE PMS 
use PMS
CREATE TABLE [employeeAccess](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accessLevel] [int] NULL,
 CONSTRAINT [PK_employeeAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [employeeDepartment]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [employeeDepartment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [nvarchar](100) NULL,
 CONSTRAINT [PK_employeeDepartment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [employeeRank]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [employeeRank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rank] [nvarchar](100) NULL,
 CONSTRAINT [PK_employeeRank] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [timeOff]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [timeOff](
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
/****** Object:  Table [timeType]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [timeType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_timeType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Users]    Script Date: 03.03.2023 19:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users](
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
SET IDENTITY_INSERT [employeeAccess] ON 

INSERT [employeeAccess] ([id], [accessLevel]) VALUES (1, 1)
INSERT [employeeAccess] ([id], [accessLevel]) VALUES (2, 2)
INSERT [employeeAccess] ([id], [accessLevel]) VALUES (3, 3)
INSERT [employeeAccess] ([id], [accessLevel]) VALUES (4, 4)
INSERT [employeeAccess] ([id], [accessLevel]) VALUES (5, 5)
SET IDENTITY_INSERT [employeeAccess] OFF
GO
SET IDENTITY_INSERT [employeeDepartment] ON 

INSERT [employeeDepartment] ([id], [department]) VALUES (1, N'Отдел разработки')
INSERT [employeeDepartment] ([id], [department]) VALUES (2, N'Отдел тестирования')
INSERT [employeeDepartment] ([id], [department]) VALUES (3, N'Отдел аналитики')
INSERT [employeeDepartment] ([id], [department]) VALUES (4, N'Отдел HR')
INSERT [employeeDepartment] ([id], [department]) VALUES (5, N'Отдел кадров')
SET IDENTITY_INSERT [employeeDepartment] OFF
GO
SET IDENTITY_INSERT [employeeRank] ON 

INSERT [employeeRank] ([id], [rank]) VALUES (1, N'Администратор')
INSERT [employeeRank] ([id], [rank]) VALUES (2, N'HR')
INSERT [employeeRank] ([id], [rank]) VALUES (3, N'Разработчик')
INSERT [employeeRank] ([id], [rank]) VALUES (4, N'Тестировщик')
INSERT [employeeRank] ([id], [rank]) VALUES (5, N'Прапор')
INSERT [employeeRank] ([id], [rank]) VALUES (6, N'Салага')
INSERT [employeeRank] ([id], [rank]) VALUES (7, N'Сержант')
INSERT [employeeRank] ([id], [rank]) VALUES (8, N'Рядовой')
INSERT [employeeRank] ([id], [rank]) VALUES (9, N'Дух')
INSERT [employeeRank] ([id], [rank]) VALUES (10, N'Ассасин')
INSERT [employeeRank] ([id], [rank]) VALUES (11, N'Маг')
INSERT [employeeRank] ([id], [rank]) VALUES (12, N'Целитель')
INSERT [employeeRank] ([id], [rank]) VALUES (13, N'Копьеносец')
INSERT [employeeRank] ([id], [rank]) VALUES (14, N'Хакер')
INSERT [employeeRank] ([id], [rank]) VALUES (15, N'Мимопроходил')
INSERT [employeeRank] ([id], [rank]) VALUES (16, N'УБОРЩИК')
INSERT [employeeRank] ([id], [rank]) VALUES (17, N'Президент')
SET IDENTITY_INSERT [employeeRank] OFF
GO
SET IDENTITY_INSERT [timeOff] ON 

INSERT [timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (1, 1, 1, N'asdasdasd', 0, 1, CAST(N'2023-03-15' AS Date), NULL, NULL, NULL, NULL, NULL)
INSERT [timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (2, 2, 2, N'asdasdasda', 1, 1, CAST(N'2023-03-15' AS Date), CAST(N'2023-03-23' AS Date), NULL, NULL, NULL, NULL)
INSERT [timeOff] ([id], [user_id], [timeType_id], [reason], [payVacation], [approved], [toDate], [fromDate], [workDayBegin], [workDayEnd], [dinnerBegin], [month_id]) VALUES (3, 3, 3, N'asdasdasds', 0, 1, CAST(N'2023-03-15' AS Date), NULL, CAST(N'09:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(N'12:00:00' AS Time), NULL)
SET IDENTITY_INSERT [timeOff] OFF
GO
SET IDENTITY_INSERT [timeType] ON 

INSERT [timeType] ([id], [type]) VALUES (1, N'Выходной')
INSERT [timeType] ([id], [type]) VALUES (2, N'Отпуск')
INSERT [timeType] ([id], [type]) VALUES (3, N'Отгул')
SET IDENTITY_INSERT [timeType] OFF
GO
SET IDENTITY_INSERT [Users] ON 

INSERT [Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (1, N'Zexa', N'Zexa', N'Дубровский Алексей Михайлович', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 1, 2, NULL, 1)
INSERT [Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (2, N'Boba', N'Boba', N'Погосов Владислав', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 15, 3, NULL, 2)
INSERT [Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (3, N'Biba', N'Biba', N'Крутой Какойто Чел', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 13, 3, NULL, 2)
INSERT [Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (4, N'Pavlov', N'Pavlov', N'ПОП ПУП ПИП1', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 13, 2, NULL, 4)
INSERT [Users] ([id], [login], [password], [FIO], [dateOfBirth], [dateComing], [id_rank], [id_access], [image], [id_department]) VALUES (5, N'PIP', N'PIP', N'ПОП ПУП ПИП2', CAST(N'2001-01-26' AS Date), CAST(N'2001-01-26' AS Date), 12, 1, NULL, 3)
SET IDENTITY_INSERT [Users] OFF
GO
ALTER TABLE [timeOff]  WITH CHECK ADD  CONSTRAINT [FK_timeOff_timeType] FOREIGN KEY([timeType_id])
REFERENCES [timeType] ([id])
GO
ALTER TABLE [timeOff] CHECK CONSTRAINT [FK_timeOff_timeType]
GO
ALTER TABLE [timeOff]  WITH CHECK ADD  CONSTRAINT [FK_timeOff_Users] FOREIGN KEY([user_id])
REFERENCES [Users] ([id])
GO
ALTER TABLE [timeOff] CHECK CONSTRAINT [FK_timeOff_Users]
GO
ALTER TABLE [Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeAccess] FOREIGN KEY([id_access])
REFERENCES [employeeAccess] ([id])
GO
ALTER TABLE [Users] CHECK CONSTRAINT [FK_Users_employeeAccess]
GO
ALTER TABLE [Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeDepartment] FOREIGN KEY([id_department])
REFERENCES [employeeDepartment] ([id])
GO
ALTER TABLE [Users] CHECK CONSTRAINT [FK_Users_employeeDepartment]
GO
ALTER TABLE [Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_employeeRank] FOREIGN KEY([id_rank])
REFERENCES [employeeRank] ([id])
GO
ALTER TABLE [Users] CHECK CONSTRAINT [FK_Users_employeeRank]
GO
