CREATE TABLE [dbo].[Raschasovka] (
    [Id]                   INT      IDENTITY (1, 1) NOT NULL,
    [Potok]                INT      NULL,
    [CourseId]             TINYINT  NOT NULL,
    [TeacherId]            INT      NOT NULL,
    [TotalHoursForSemestr] SMALLINT NOT NULL,
    [AuditoriumId]         SMALLINT NULL,
    [GroupId]              BIGINT   NOT NULL,
    [DepartmentId]         SMALLINT NOT NULL,
    [SemesterId]           TINYINT  NOT NULL,
    [SubjectId]            BIGINT   NOT NULL,
    [SubjectTypeId]        TINYINT  NOT NULL,
    [NumberOfStudents]     TINYINT  NOT NULL,
    [SubjectClassId]       TINYINT  NOT NULL,
    CONSTRAINT [PK_Raschasovka] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Raschasovka_Auditorium] FOREIGN KEY ([AuditoriumId]) REFERENCES [dbo].[Auditorium] ([Id]),
    CONSTRAINT [FK_Raschasovka_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Raschasovka_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]),
    CONSTRAINT [FK_Raschasovka_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id]),
    CONSTRAINT [FK_Raschasovka_Semesters] FOREIGN KEY ([SemesterId]) REFERENCES [dbo].[Semesters] ([Id]),
    CONSTRAINT [FK_Raschasovka_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([Id]),
    CONSTRAINT [FK_Raschasovka_SubjectClass] FOREIGN KEY ([SubjectClassId]) REFERENCES [dbo].[SubjectClass] ([Id]),
    CONSTRAINT [FK_Raschasovka_SubjectType] FOREIGN KEY ([SubjectTypeId]) REFERENCES [dbo].[SubjectType] ([Id]),
    CONSTRAINT [FK_Raschasovka_Teacher] FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teacher] ([Id]) ON UPDATE CASCADE
);







