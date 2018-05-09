CREATE TABLE [dbo].[Subject] (
    [Id]       BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (15) NOT NULL,
    [FullName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED ([Id] ASC)
);



