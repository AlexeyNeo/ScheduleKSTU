CREATE TABLE [dbo].[Week] (
    [Id]         TINYINT IDENTITY (1, 1) NOT NULL,
    [Number]     TINYINT NOT NULL,
    [Znamenatel] BIT     NOT NULL,
    CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED ([Id] ASC)
);

