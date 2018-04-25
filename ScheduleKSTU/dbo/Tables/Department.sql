CREATE TABLE [dbo].[Department] (
    [Id]        SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (10) NOT NULL,
    [FullName]  NVARCHAR (80) NOT NULL,
    [FacultyId] SMALLINT      NOT NULL,
    CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Department_Faculty] FOREIGN KEY ([FacultyId]) REFERENCES [dbo].[Faculty] ([Id])
);

