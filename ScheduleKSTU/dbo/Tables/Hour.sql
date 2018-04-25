CREATE TABLE [dbo].[Hour] (
    [Id]     TINYINT  IDENTITY (1, 1) NOT NULL,
    [Begin]  TIME (0) NOT NULL,
    [End]    TIME (7) NOT NULL,
    [Number] TINYINT  NOT NULL,
    CONSTRAINT [PK_Hour] PRIMARY KEY CLUSTERED ([Id] ASC)
);

