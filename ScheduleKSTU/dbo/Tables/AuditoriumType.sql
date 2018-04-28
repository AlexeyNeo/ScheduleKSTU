﻿CREATE TABLE [dbo].[AuditoriumType] (
    [Id]       TINYINT       IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (15) NOT NULL,
    [FullName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_AuditoriumType] PRIMARY KEY CLUSTERED ([Id] ASC)
);



