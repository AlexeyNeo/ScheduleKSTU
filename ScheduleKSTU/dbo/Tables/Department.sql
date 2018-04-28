CREATE TABLE [dbo].[Department] (
    [Id]        SMALLINT       IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (30)  NOT NULL,
    [FullName]  NVARCHAR (100) NOT NULL,
    [FacultyId] SMALLINT       NULL,
    CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Department_Faculty] FOREIGN KEY ([FacultyId]) REFERENCES [dbo].[Faculty] ([Id])
);



