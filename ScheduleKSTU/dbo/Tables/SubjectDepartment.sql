CREATE TABLE [dbo].[SubjectDepartment] (
    [Id]           BIGINT   IDENTITY (1, 1) NOT NULL,
    [SubjectId]    BIGINT   NOT NULL,
    [DepartmentId] SMALLINT NULL,
    CONSTRAINT [PK_SubjectDepartmentId] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubjectDepartment_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]),
    CONSTRAINT [FK_SubjectDepartment_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([Id])
);

