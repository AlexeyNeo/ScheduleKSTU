CREATE TABLE [dbo].[Building] (
    [Id]       TINYINT           IDENTITY (1, 1) NOT NULL,
    [FullName] NVARCHAR (60)     NULL,
    [Number]   TINYINT           NOT NULL,
    [Location] [sys].[geography] NOT NULL,
    [Address]  NVARCHAR (100)    NULL,
    CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED ([Id] ASC)
);

