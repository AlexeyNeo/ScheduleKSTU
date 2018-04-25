CREATE TABLE [dbo].[CourseGroup] (
    [Id]       BIGINT  IDENTITY (1, 1) NOT NULL,
    [CourseId] TINYINT NOT NULL,
    [GroupId]  BIGINT  NOT NULL,
    CONSTRAINT [PK_CourseGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CourseGroup_Course] FOREIGN KEY ([CourseId]) REFERENCES [dbo].[Course] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [FK_CourseGroup_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id]) ON UPDATE CASCADE
);

