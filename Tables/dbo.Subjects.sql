CREATE TABLE [dbo].[Subjects] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (150) NOT NULL,
    [CreditsECTS]   INT            DEFAULT ((1)) NOT NULL,
    [TotalHours]    INT            NOT NULL,
    [LectureHours]  INT            DEFAULT ((0)) NULL,
    [PracticeHours] INT            DEFAULT ((0)) NULL,
    [HasExam]       BIT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

