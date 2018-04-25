CREATE TABLE [dbo].[SubjectType] (
    [Id]   TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (30) NOT NULL,
    CONSTRAINT [PK_SubjectType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

