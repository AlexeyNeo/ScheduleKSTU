CREATE TABLE [dbo].[TeacherDepartment] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [TeacherId]    INT      NOT NULL,
    [DepartmentId] SMALLINT NOT NULL,
    CONSTRAINT [PK_TeacherDepartmentId] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TeacherDepartment_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]),
    CONSTRAINT [FK_TeacherDepartment_Teacher] FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teacher] ([Id])
);

