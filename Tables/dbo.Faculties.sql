CREATE TABLE [dbo].[Faculties] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (100) NOT NULL,
    [ShortName]      NVARCHAR (10)  NULL,
    [DeanFullName]   NVARCHAR (100) NULL,
    [ContactEmail]   NVARCHAR (60)  NULL,
    [FoundationYear] INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

