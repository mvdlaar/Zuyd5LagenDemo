
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/11/2017 11:54:58
-- Generated from EDMX file: D:\Projects\Zuyd5LagenDemo\Zuyd5LagenDemo\Zuyd5LagenDemoModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Zuyd5LagenDemoDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Gebruikers'
CREATE TABLE [dbo].[Gebruikers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [TwitterGebruikersnaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GeoCaches'
CREATE TABLE [dbo].[GeoCaches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Locatie] nvarchar(max)  NOT NULL,
    [Beschrijving] nvarchar(max)  NOT NULL,
    [CacheType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GebruikerGeoCache'
CREATE TABLE [dbo].[GebruikerGeoCache] (
    [Gebruiker_Id] int  NOT NULL,
    [GeoCache_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Gebruikers'
ALTER TABLE [dbo].[Gebruikers]
ADD CONSTRAINT [PK_Gebruikers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GeoCaches'
ALTER TABLE [dbo].[GeoCaches]
ADD CONSTRAINT [PK_GeoCaches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Gebruiker_Id], [GeoCache_Id] in table 'GebruikerGeoCache'
ALTER TABLE [dbo].[GebruikerGeoCache]
ADD CONSTRAINT [PK_GebruikerGeoCache]
    PRIMARY KEY CLUSTERED ([Gebruiker_Id], [GeoCache_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Gebruiker_Id] in table 'GebruikerGeoCache'
ALTER TABLE [dbo].[GebruikerGeoCache]
ADD CONSTRAINT [FK_GebruikerGeoCache_Gebruiker]
    FOREIGN KEY ([Gebruiker_Id])
    REFERENCES [dbo].[Gebruikers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [GeoCache_Id] in table 'GebruikerGeoCache'
ALTER TABLE [dbo].[GebruikerGeoCache]
ADD CONSTRAINT [FK_GebruikerGeoCache_GeoCache]
    FOREIGN KEY ([GeoCache_Id])
    REFERENCES [dbo].[GeoCaches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GebruikerGeoCache_GeoCache'
CREATE INDEX [IX_FK_GebruikerGeoCache_GeoCache]
ON [dbo].[GebruikerGeoCache]
    ([GeoCache_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------