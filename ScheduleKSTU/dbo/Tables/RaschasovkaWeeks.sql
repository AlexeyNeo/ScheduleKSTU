CREATE TABLE [dbo].[RaschasovkaWeeks] (
    [Id]            BIGINT  IDENTITY (1, 1) NOT NULL,
    [RaschasovkaId] INT     NOT NULL,
    [WeekId]        TINYINT NOT NULL,
    [HoursForWeek]  TINYINT NOT NULL,
    CONSTRAINT [PK_RaschasovkaWeeksId] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RaschasovkaWeeks_Raschasovka] FOREIGN KEY ([RaschasovkaId]) REFERENCES [dbo].[Raschasovka] ([Id]),
    CONSTRAINT [FK_RaschasovkaWeeks_Week] FOREIGN KEY ([WeekId]) REFERENCES [dbo].[Week] ([Id])
);



