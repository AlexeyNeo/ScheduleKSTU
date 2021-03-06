﻿CREATE TABLE [dbo].[Subject] (
    [Id]       BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (15)  NULL,
    [FullName] NVARCHAR (150) NOT NULL,
    CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED ([Id] ASC)
);