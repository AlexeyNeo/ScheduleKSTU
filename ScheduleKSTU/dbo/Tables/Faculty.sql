CREATE TABLE [dbo].[Faculty] (
    [Id]       SMALLINT       IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (100) NOT NULL,
    [FullName] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED ([Id] ASC)
);



