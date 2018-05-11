CREATE TABLE [dbo].[Criteria] (
    [Id]          TINYINT        IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (30)  NOT NULL,
    [Description] NVARCHAR (100) NOT NULL,
    [Rate]        FLOAT (53)     DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_CriteriaId] PRIMARY KEY CLUSTERED ([Id] ASC)
);

