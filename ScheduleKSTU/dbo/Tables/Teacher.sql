CREATE TABLE [dbo].[Teacher] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    NVARCHAR (30) NOT NULL,
    [LastName]     NVARCHAR (30) NOT NULL,
    [DepartmentId] SMALLINT      NOT NULL,
    CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Teacher_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]) ON UPDATE CASCADE
);

