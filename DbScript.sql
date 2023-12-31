USE [EMS]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[AnswerText] [nvarchar](max) NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ExamDate] [datetime] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NOT NULL,
	[OptionText] [nvarchar](500) NOT NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NOT NULL,
	[QuestionText] [nvarchar](1000) NOT NULL,
	[QuestionType] [int] NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NULL,
	[UserID] [int] NULL,
	[TotalScore] [int] NOT NULL,
	[Grade] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](250) NULL,
	[Gender] [bit] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate]) VALUES (1, N'FSC', CAST(N'2023-09-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate]) VALUES (2, N'FA', CAST(N'2023-09-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Exam] ([ExamID], [Title], [ExamDate]) VALUES (3, N'ICS', CAST(N'2023-09-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[Options] ON 

INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (1, 1, N'True', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (2, 1, N'False', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (3, 2, N'sdf', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (4, 4, N'True', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (5, 4, N'False', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (6, 5, N'Lahore', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (7, 5, N'Islamabad', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (8, 5, N'Karachi', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (9, 5, N'Peshawar', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (10, 6, N'Random Access Memory', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (11, 7, N'Vegan diet', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (12, 7, N'Protein-rich food', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (13, 7, N'Balanced diet', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (14, 7, N'Only fresh fruits', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (15, 8, N'4', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (16, 8, N'5', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (17, 8, N'6', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (18, 8, N'3', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (19, 9, N'Read Only Memory', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (20, 11, N'False', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (21, 11, N'True', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (22, 13, N'algorithm', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (23, 13, N'flowchart', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (24, 13, N'object code', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (25, 13, N'coding', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (26, 14, N'desk checking', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (27, 14, N'debugging ', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (28, 14, N'decoding', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (29, 14, N'testing', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (30, 15, N'True', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (31, 15, N'False', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (32, 16, N'programming language', 1)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (33, 16, N'software ', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (34, 16, N'syntax ', 0)
INSERT [dbo].[Options] ([OptionID], [QuestionID], [OptionText], [IsCorrect]) VALUES (35, 16, N'english language', 0)
SET IDENTITY_INSERT [dbo].[Options] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (1, 1, N'2 + 2 = 5?', 3)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (4, 1, N'Lahore is the Capital of Pakistan?', 3)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (5, 1, N'Capital of Pakistan is?', 1)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (6, 1, N'RAM is stand for___________?', 2)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (7, 1, N'Out of the following, which is the best way to eat healthier?', 1)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (8, 1, N'How many States Pakistan have?', 1)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (9, 1, N'ROM is stand for __________?', 2)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (10, 1, N'Write an essay on My Teacher.', 4)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (11, 1, N'There are 11 month in year?', 3)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (12, 1, N'Write a note on  Bubble Sort.', 4)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (13, 1, N'the pseudocode is…', 1)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (14, 1, N'finding and solving errors in the source code is…', 1)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (15, 1, N'C language is not an object oriented pogramming lnguage', 3)
INSERT [dbo].[Questions] ([QuestionID], [ExamID], [QuestionText], [QuestionType]) VALUES (16, 1, N'communication between user and the computer is…', 1)
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionType] ON 

INSERT [dbo].[QuestionType] ([TypeID], [Type]) VALUES (1, N'Multiple Choice Questions')
INSERT [dbo].[QuestionType] ([TypeID], [Type]) VALUES (2, N'Fill in the Blanks')
INSERT [dbo].[QuestionType] ([TypeID], [Type]) VALUES (3, N'True/False')
INSERT [dbo].[QuestionType] ([TypeID], [Type]) VALUES (4, N'Essay')
SET IDENTITY_INSERT [dbo].[QuestionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Role]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([Id], [Role]) VALUES (2, N'Student')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Password], [Gender], [RoleId]) VALUES (1, N'Admin', N'admin@gmail.com', N'123', N'admin123', 1, 1)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Password], [Gender], [RoleId]) VALUES (2, N'Zeeshan', N'zee@gmail.com', N'123', N'zee123', 1, 2)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Password], [Gender], [RoleId]) VALUES (3, N'Ahmad', N'ahmad@gmail.com', N'12456', N'456789', 1, 2)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Password], [Gender], [RoleId]) VALUES (4, N'Fatima', N'fatima@gmail.com', N'78632', N'fatima123', 0, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuestions]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllQuestions] as
BEGIN
select q.QuestionID,e.Title,q.QuestionText,e.ExamDate,qt.Type,qt.TypeID from 
Questions q inner join Exam e on q.ExamID = e.ExamID
inner join QuestionType qt on q.QuestionType = qt.TypeID
END 
GO
/****** Object:  StoredProcedure [dbo].[GetEmployee]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployee] as
BEGIN
    select * from Exam
END 
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionType]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuestionType] as
BEGIN
    select * from QuestionType
END 
GO
/****** Object:  StoredProcedure [dbo].[GetQuiz]    Script Date: 9/10/2023 3:06:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuiz] as
BEGIN
select q.QuestionID,e.Title,q.QuestionText,e.ExamDate,qt.Type,qt.TypeID,o.OptionText,o.IsCorrect from 
Questions q inner join Exam e on q.ExamID = e.ExamID
inner join QuestionType qt on q.QuestionType = qt.TypeID
left join Options o on o.QuestionID = q.QuestionID

END 
GO
