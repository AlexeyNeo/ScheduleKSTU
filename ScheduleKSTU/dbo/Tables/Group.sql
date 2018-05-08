CREATE TABLE [dbo].[Group] (
    [Id]               BIGINT        IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (20) NOT NULL,
    [NumberOfStudents] TINYINT       NULL,
    [DepartmentId]     SMALLINT      NOT NULL,
    CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Group_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]) ON UPDATE CASCADE
);

