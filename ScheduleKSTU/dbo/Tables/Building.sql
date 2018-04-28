CREATE TABLE [dbo].[Building] (
    [Id]       TINYINT           IDENTITY (1, 1) NOT NULL,
    [FullName] NVARCHAR (100)    NULL,
    [Number]   TINYINT           NULL,
    [Location] [sys].[geography] NULL,
    [Address]  NVARCHAR (100)    NULL,
    CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED ([Id] ASC)
);



