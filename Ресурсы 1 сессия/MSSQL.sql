CREATE TABLE [dbo].[Executor](
	[ID] [int] NOT NULL,
	[ManagerID] [int] NOT NULL,
	[Grade] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EXECUTORS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Manager](
	[ID] [int] NOT NULL,
	[JuniorMinimum] [int] NOT NULL,
	[MiddleMinimum] [int] NOT NULL,
	[SeniorMinimum] [int] NOT NULL,
	[AnalysisCoefficient] [float] NOT NULL,
	[InstallationCoefficient] [float] NOT NULL,
	[SupportCoefficient] [float] NOT NULL,
	[TimeCoefficient] [float] NOT NULL,
	[DifficultyCoefficient] [float] NOT NULL,
	[ToMoneyCoefficient] [float] NOT NULL,
 CONSTRAINT [PK_MANAGERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExecutorID] [int] NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Description] [text] NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[Deadline] [date] NOT NULL,
	[Difficulty] [float] NOT NULL,
	[Time] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[WorkType] [varchar](45) NOT NULL,
	[CompletedDateTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_TASKS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[MiddleName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[Login] [varchar](255) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (1, 11, N'junior')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (2, 11, N'middle')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (3, 12, N'senior')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (4, 12, N'junior')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (5, 12, N'middle')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (6, 13, N'junior')
GO
INSERT [dbo].[Executor] ([ID], [ManagerID], [Grade]) VALUES (7, 13, N'junior')
GO
INSERT [dbo].[Manager] ([ID], [JuniorMinimum], [MiddleMinimum], [SeniorMinimum], [AnalysisCoefficient], [InstallationCoefficient], [SupportCoefficient], [TimeCoefficient], [DifficultyCoefficient], [ToMoneyCoefficient]) VALUES (11, 10000, 20000, 30000, 0.9, 0.7, 0.4, 1.9, 2.5, 200)
GO
INSERT [dbo].[Manager] ([ID], [JuniorMinimum], [MiddleMinimum], [SeniorMinimum], [AnalysisCoefficient], [InstallationCoefficient], [SupportCoefficient], [TimeCoefficient], [DifficultyCoefficient], [ToMoneyCoefficient]) VALUES (12, 12000, 24000, 36000, 0.8, 0.5, 0.2, 1.5, 2, 195)
GO
INSERT [dbo].[Manager] ([ID], [JuniorMinimum], [MiddleMinimum], [SeniorMinimum], [AnalysisCoefficient], [InstallationCoefficient], [SupportCoefficient], [TimeCoefficient], [DifficultyCoefficient], [ToMoneyCoefficient]) VALUES (13, 5000, 15000, 30000, 1, 1, 0.2, 3.4, 2.9, 250)
GO
SET IDENTITY_INSERT [dbo].[Task] ON 
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (10, 1, N'Проектирование системы для "ООО Автопром-сервис"', NULL, CAST(N'2018-12-14T00:00:00.000' AS DateTime), CAST(N'2018-12-22' AS Date), 20, 573, N'запланирована', N'анализ и проектирование', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (11, 1, N'Установка оборудования для "ООО Автопром-сервис"', NULL, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-23' AS Date), 25, 613, N'запланирована', N'установка оборудования', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (12, 2, N'Анализ поломки оборудования у "Пятерочка"', NULL, CAST(N'2018-12-16T00:00:00.000' AS DateTime), CAST(N'2018-12-24' AS Date), 12, 667, N'запланирована', N'техническое обслуживание и сопровождение', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (13, 3, N'Подготовить коммерческое предложение для "Евросеть"', NULL, CAST(N'2018-12-16T00:00:00.000' AS DateTime), CAST(N'2018-12-24' AS Date), 45, 132, N'запланирована', N'анализ и проектирование', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (14, 4, N'Подготовить коммерческое предложение для "Дикси"', NULL, CAST(N'2018-12-16T00:00:00.000' AS DateTime), CAST(N'2018-12-26' AS Date), 35, 857, N'запланирована', N'анализ и проектирование', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (15, 5, N'Установка оборудования для "ООО Магнит"', NULL, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-29' AS Date), 32, 627, N'запланирована', N'установка оборудования', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (16, 5, N'Установка оборудования для "Бристоль"', NULL, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-29' AS Date), 24, 767, N'запланирована', N'установка оборудования', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (17, 6, N'Отправить пригласительные письма потенциальным клиентам', NULL, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-29' AS Date), 15, 805, N'запланирована', N'анализ и проектирование', NULL, 0)
GO
INSERT [dbo].[Task] ([ID], [ExecutorID], [Title], [Description], [CreateDateTime], [Deadline], [Difficulty], [Time], [Status], [WorkType], [CompletedDateTime], [IsDeleted]) VALUES (18, 7, N'Отработать возражения от "Пчелки"', NULL, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-30' AS Date), 34, 749, N'запланирована', N'анализ и проектирование', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (1, N' ', N'Альбина ', N'Галиуллина', N'Нафисовна', N'galiulina', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (2, N' ', N'Александр ', N'Кудряшов', N'Витальевич', N'kudryashov', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (3, N' ', N'Светлана ', N'Велижанина', N'Николаевна', N'velizhanina', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (4, N' ', N'Алевтина ', N'Плотникова', N'Валентиновна', N'plotnikova', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (5, N' ', N'Александр ', N'Мальцев', N'Сергеевич', N'malcev', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (6, N' ', N'Екатерина ', N'Морозова', N'Владимировна', N'morozova', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (7, N' ', N'Анастасия ', N'Пьянкова', N'Борисовна', N'pyankova', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (11, N' ', N'Дарья ', N'Куклева', N'Владимировна', N'kukleva', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (12, N' ', N'Владислав ', N'Кремлев', N'Юрьевич', N'kremlev', 0)
GO
INSERT [dbo].[User] ([ID], [Password], [FirstName], [MiddleName], [LastName], [Login], [IsDeleted]) VALUES (13, N' ', N'Андрей ', N'Лавринов', N'Борисович', N'lavrinov', 0)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User]
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Task] ADD  CONSTRAINT [DF_Task_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Executor]  WITH CHECK ADD  CONSTRAINT [executors_fk0] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Manager] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Executor] CHECK CONSTRAINT [executors_fk0]
GO
ALTER TABLE [dbo].[Executor]  WITH CHECK ADD  CONSTRAINT [FK_Executor_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Executor] CHECK CONSTRAINT [FK_Executor_User]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_User]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [tasks_fk0] FOREIGN KEY([ExecutorID])
REFERENCES [dbo].[Executor] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [tasks_fk0]
GO