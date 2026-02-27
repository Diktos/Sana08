CREATE TABLE [dbo].[Students] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [GroupId]           INT            NOT NULL,
    [LastName]          NVARCHAR (50)  NOT NULL,
    [FirstName]         NVARCHAR (50)  NOT NULL,
    [MiddleName]        NVARCHAR (50)  NULL,
    [DateOfBirth]       DATE           NULL,
    [Email]             NVARCHAR (60)  NULL,
    [PhoneNumber]       NVARCHAR (15)  NULL,
    [IsStateFunded]     BIT            DEFAULT ((0)) NOT NULL,
    [ScholarshipAmount] DECIMAL (8, 2) DEFAULT ((0.00)) NULL,
    [Status]            NVARCHAR (30)  DEFAULT ('Активний') NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC),
    FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Groups] ([Id]),
    CHECK ([Status]='Активний' OR [Status]='Відрахований' OR [Status]='Академвідпустка')
);

