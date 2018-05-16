CREATE TABLE [dbo].[SubjectClass] (
    [Id]   TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_SubjectClassId] PRIMARY KEY CLUSTERED ([Id] ASC)
);

