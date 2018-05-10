CREATE TABLE [dbo].[Schedule] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [HourId]        TINYINT       NOT NULL,
    [DayOfWeekId]   TINYINT       NOT NULL,
    [GroupId]       BIGINT        NOT NULL,
    [TeacherId]     INT           NOT NULL,
    [AuditoriumId]  SMALLINT      NOT NULL,
    [WeekId]        TINYINT       NOT NULL,
    [LastChange]    SMALLDATETIME NULL,
    [IsFinal]       BIT           NULL,
    [SubjectId]     BIGINT        NOT NULL,
    [SubjectTypeId] TINYINT       NOT NULL,
    [SemesterId]    TINYINT       NOT NULL,
    CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Schedule_Auditorium] FOREIGN KEY ([AuditoriumId]) REFERENCES [dbo].[Auditorium] ([Id]),
    CONSTRAINT [FK_Schedule_DayOfWeek] FOREIGN KEY ([DayOfWeekId]) REFERENCES [dbo].[DayOfWeek] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Schedule_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Schedule_Hour] FOREIGN KEY ([HourId]) REFERENCES [dbo].[Hour] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Schedule_SemesterId] FOREIGN KEY ([SemesterId]) REFERENCES [dbo].[Semesters] ([Id]),
    CONSTRAINT [FK_Schedule_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([Id]),
    CONSTRAINT [FK_Schedule_SubjectType] FOREIGN KEY ([SubjectTypeId]) REFERENCES [dbo].[SubjectType] ([Id]),
    CONSTRAINT [FK_Schedule_Teacher] FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teacher] ([Id]),
    CONSTRAINT [FK_Schedule_Week] FOREIGN KEY ([WeekId]) REFERENCES [dbo].[Week] ([Id]) ON UPDATE CASCADE
);



