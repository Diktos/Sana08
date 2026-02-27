CREATE TABLE [dbo].[Grades] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [StudentId]     INT           NOT NULL,
    [SubjectId]     INT           NOT NULL,
    [TeacherId]     INT           NOT NULL,
    [Score]         INT           NOT NULL,
    [GradeText]     NVARCHAR (20) NULL,
    [ExamType]      NVARCHAR (20) NOT NULL,
    [Semester]      INT           NOT NULL,
    [AttemptNumber] INT           DEFAULT ((1)) NULL,
    [ExamDate]      DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([StudentId]) REFERENCES [dbo].[Students] ([Id]),
    FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subjects] ([Id]),
    FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teachers] ([Id]),
    CHECK ([Score]>=(0) AND [Score]<=(100)),
    CHECK ([ExamType]='Іспит' OR [ExamType]='Залік' OR [ExamType]='Курсова'),
    CHECK ([Semester]>=(1) AND [Semester]<=(12))
);

