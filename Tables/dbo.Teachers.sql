CREATE TABLE [dbo].[Teachers] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [DepartmentId]    INT            NOT NULL,
    [LastName]        NVARCHAR (50)  NOT NULL,
    [FirstName]       NVARCHAR (50)  NOT NULL,
    [MiddleName]      NVARCHAR (50)  NULL,
    [Position]        NVARCHAR (50)  NOT NULL,
    [AcademicDegree]  NVARCHAR (50)  NULL,
    [ExperienceYears] INT            DEFAULT ((0)) NULL,
    [Salary]          DECIMAL (8, 2) NULL,
    [Email]           NVARCHAR (60)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC),
    FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Departments] ([Id])
);

