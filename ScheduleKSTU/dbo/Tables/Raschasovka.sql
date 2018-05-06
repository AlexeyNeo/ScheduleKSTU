CREATE TABLE [dbo].[Raschasovka] (
    [Id]                   INT      IDENTITY (1, 1) NOT NULL,
    [Potok]                INT      NOT NULL,
    [CourseId]             TINYINT  NOT NULL,
    [TeacherId]            INT      NOT NULL,
    [SubjectWithTypeId]    BIGINT   NOT NULL,
    [TotalHoursForSemestr] SMALLINT NOT NULL,
    [TotalHoursForWeek]    TINYINT  NOT NULL,
    [AuditoriumId]         SMALLINT NULL,
    [GroupId]              BIGINT   NOT NULL,
    [DepartmentId]         SMALLINT NOT NULL,
    [SemesterId]           TINYINT  NOT NULL,
    [YearId]               TINYINT  NOT NULL,
    CONSTRAINT [PK_Raschasovka] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Raschasovka_Auditorium] FOREIGN KEY ([AuditoriumId]) REFERENCES [dbo].[Auditorium] ([Id]),
    CONSTRAINT [FK_Raschasovka_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Raschasovka_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]),
    CONSTRAINT [FK_Raschasovka_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id]),
    CONSTRAINT [FK_Raschasovka_Semesters] FOREIGN KEY ([SemesterId]) REFERENCES [dbo].[Semesters] ([Id]),
    CONSTRAINT [FK_Raschasovka_SubjectWithType] FOREIGN KEY ([SubjectWithTypeId]) REFERENCES [dbo].[SubjectWithType] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Raschasovka_Teacher] FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teacher] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Raschasovka_Year] FOREIGN KEY ([YearId]) REFERENCES [dbo].[Years] ([Id])
);



