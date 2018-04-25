CREATE TABLE [dbo].[SubjectWithType] (
    [Id]                 BIGINT   IDENTITY (1, 1) NOT NULL,
    [SubjectId]          BIGINT   NOT NULL,
    [SubjectTypeId]      TINYINT  NOT NULL,
    [PreferAuditoriumId] SMALLINT NULL,
    CONSTRAINT [PK_SubjectWithType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubjectWithType_Auditorium] FOREIGN KEY ([PreferAuditoriumId]) REFERENCES [dbo].[Auditorium] ([Id]),
    CONSTRAINT [FK_SubjectWithType_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([Id]),
    CONSTRAINT [FK_SubjectWithType_SubjectType] FOREIGN KEY ([SubjectTypeId]) REFERENCES [dbo].[SubjectType] ([Id])
);

