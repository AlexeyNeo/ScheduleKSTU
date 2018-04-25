CREATE TABLE [dbo].[Subject] (
    [Id]           BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (15) NOT NULL,
    [FullName]     NVARCHAR (50) NOT NULL,
    [DepartmentId] SMALLINT      NOT NULL,
    CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Subject_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]) ON UPDATE CASCADE
);

