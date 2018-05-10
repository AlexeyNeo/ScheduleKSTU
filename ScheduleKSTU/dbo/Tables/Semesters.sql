CREATE TABLE [dbo].[Semesters] (
    [Id]   TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_SemestersId] PRIMARY KEY CLUSTERED ([Id] ASC)
);

