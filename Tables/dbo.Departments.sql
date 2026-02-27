CREATE TABLE [dbo].[Departments] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [FacultyId]        INT            NOT NULL,
    [Name]             NVARCHAR (100) NOT NULL,
    [HeadOfDepartment] NVARCHAR (100) NULL,
    [OfficeRoom]       NVARCHAR (5)   NULL,
    [ContactPhone]     NVARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FacultyId]) REFERENCES [dbo].[Faculties] ([Id])
);

