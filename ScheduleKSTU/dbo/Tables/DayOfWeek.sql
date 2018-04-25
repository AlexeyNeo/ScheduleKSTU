CREATE TABLE [dbo].[DayOfWeek] (
    [Id]       TINYINT       IDENTITY (1, 1) NOT NULL,
    [Number]   TINYINT       NOT NULL,
    [Name]     NVARCHAR (10) NOT NULL,
    [FullName] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_DayOfWeek] PRIMARY KEY CLUSTERED ([Id] ASC)
);

