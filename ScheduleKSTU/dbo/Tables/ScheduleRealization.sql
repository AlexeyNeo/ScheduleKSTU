CREATE TABLE [dbo].[ScheduleRealization] (
    [Id]                 NVARCHAR (128)    NOT NULL,
    [ActualDate]         DATE              NULL,
    [BeginTime]          TIME (7)          NULL,
    [EndTime]            TIME (7)          NULL,
    [ScheduleId]         INT               NULL,
    [Description]        NCHAR (256)       NULL,
    [ActualAuditoriumId] SMALLINT          NULL,
    [Location]           [sys].[geography] NULL,
    [ActualTeacherId]    INT               NULL,
    CONSTRAINT [PK_ScheduleRealization] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ScheduleRealization_Auditorium] FOREIGN KEY ([ActualAuditoriumId]) REFERENCES [dbo].[Auditorium] ([Id]),
    CONSTRAINT [FK_ScheduleRealization_Schedule] FOREIGN KEY ([ScheduleId]) REFERENCES [dbo].[Schedule] ([Id]),
    CONSTRAINT [FK_ScheduleRealization_Teacher] FOREIGN KEY ([ActualTeacherId]) REFERENCES [dbo].[Teacher] ([Id]) ON UPDATE CASCADE
);

