CREATE TABLE [dbo].[AuditoriumSubjectTypes] (
    [Id]               TINYINT IDENTITY (1, 1) NOT NULL,
    [AuditoriumTypeId] TINYINT NOT NULL,
    [SubjectTypeId]    TINYINT NOT NULL,
    CONSTRAINT [PK_AuditoriumSubjectTypes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AuditoriumSubjectTypes_AuditoriumType] FOREIGN KEY ([AuditoriumTypeId]) REFERENCES [dbo].[AuditoriumType] ([Id]),
    CONSTRAINT [FK_AuditoriumSubjectTypes_SubjectType] FOREIGN KEY ([SubjectTypeId]) REFERENCES [dbo].[SubjectType] ([Id])
);

