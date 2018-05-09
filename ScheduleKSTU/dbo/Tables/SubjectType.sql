CREATE TABLE [dbo].[SubjectType] (
    [Id]       TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (10) NULL,
    [FullName] NCHAR (40)    NULL,
    CONSTRAINT [PK_SubjectType] PRIMARY KEY CLUSTERED ([Id] ASC)
);



