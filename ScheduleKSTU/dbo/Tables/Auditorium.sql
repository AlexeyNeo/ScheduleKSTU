CREATE TABLE [dbo].[Auditorium] (
    [Id]               SMALLINT          IDENTITY (1, 1) NOT NULL,
    [Number]           SMALLINT          NOT NULL,
    [Name]             NVARCHAR (50)     NULL,
    [DepartmentId]     SMALLINT          NULL,
    [SeatingCapacity]  SMALLINT          NOT NULL,
    [AuditoriumTypeId] TINYINT           NOT NULL,
    [BuildingId]       TINYINT           NOT NULL,
    [Location]         [sys].[geography] NULL,
    CONSTRAINT [PK_Auditorium] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Auditorium_AuditoriumType] FOREIGN KEY ([AuditoriumTypeId]) REFERENCES [dbo].[AuditoriumType] ([Id]),
    CONSTRAINT [FK_Auditorium_Building] FOREIGN KEY ([BuildingId]) REFERENCES [dbo].[Building] ([Id]),
    CONSTRAINT [FK_Auditorium_Department] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[Department] ([Id]) ON UPDATE CASCADE
);

