CREATE TABLE [dbo].[Groups] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [FacultyId]      INT           NOT NULL,
    [Name]           NVARCHAR (20) NOT NULL,
    [EnrollmentYear] INT           NOT NULL,
    [EducationForm]  NVARCHAR (20) DEFAULT ('Денна') NULL,
    [DegreeLevel]    NVARCHAR (20) DEFAULT ('Бакалавр') NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FacultyId]) REFERENCES [dbo].[Faculties] ([Id]),
    CHECK ([EducationForm]='Денна' OR [EducationForm]='Заочна' OR [EducationForm]='Дуальна'),
    CHECK ([DegreeLevel]='Бакалавр' OR [DegreeLevel]='Магістр' OR [DegreeLevel]='PhD')
);

