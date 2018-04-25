CREATE TABLE [dbo].[TeacherPersonalTime] (
    [Id]          BIGINT  IDENTITY (1, 1) NOT NULL,
    [TeacherId]   INT     NOT NULL,
    [HourId]      TINYINT NOT NULL,
    [DayOfWeekId] TINYINT NOT NULL,
    CONSTRAINT [PK_TeacherPersonalTime] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TeacherPersonalTime_DayOfWeek] FOREIGN KEY ([DayOfWeekId]) REFERENCES [dbo].[DayOfWeek] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_TeacherPersonalTime_Hour] FOREIGN KEY ([HourId]) REFERENCES [dbo].[Hour] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_TeacherPersonalTime_Teacher] FOREIGN KEY ([TeacherId]) REFERENCES [dbo].[Teacher] ([Id]) ON UPDATE CASCADE
);

