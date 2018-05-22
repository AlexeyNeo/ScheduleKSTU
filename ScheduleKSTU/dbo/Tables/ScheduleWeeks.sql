CREATE TABLE [dbo].[ScheduleWeeks] (
    [Id]         BIGINT  IDENTITY (1, 1) NOT NULL,
    [ScheduleId] INT     NOT NULL,
    [WeekId]     TINYINT NOT NULL,
    CONSTRAINT [PK_ScheduleWeeksId] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SchdeuleWeeks_Week] FOREIGN KEY ([WeekId]) REFERENCES [dbo].[Week] ([Id]),
    CONSTRAINT [FK_ScheduleWeeks_Schedule] FOREIGN KEY ([ScheduleId]) REFERENCES [dbo].[Schedule] ([Id])
);

