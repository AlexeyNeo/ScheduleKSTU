CREATE TABLE [dbo].[Teacher] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (40) NULL,
    [LastName]  NVARCHAR (40) NULL,
    CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED ([Id] ASC)
);



