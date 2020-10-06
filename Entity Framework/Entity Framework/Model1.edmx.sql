
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/06/2020 10:58:20
-- Generated from EDMX file: C:\Users\Mahesh.Doddipatla\source\repos\Entity Framework\Entity Framework\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [nani];
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

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Entity1'
CREATE TABLE [dbo].[Entity1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DepName] nvarchar(max)  NOT NULL,
    [Depid] nvarchar(max)  NOT NULL,
    [abcd] nvarchar(max)  NOT NULL,
    [StudentId] int  NOT NULL
);
GO

-- Creating table 'Entity2'
CREATE TABLE [dbo].[Entity2] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TeacherName] nvarchar(max)  NOT NULL,
    [StudentId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entity1'
ALTER TABLE [dbo].[Entity1]
ADD CONSTRAINT [PK_Entity1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Entity2'
ALTER TABLE [dbo].[Entity2]
ADD CONSTRAINT [PK_Entity2]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentId] in table 'Entity1'
ALTER TABLE [dbo].[Entity1]
ADD CONSTRAINT [FK_StudentEntity1]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentEntity1'
CREATE INDEX [IX_FK_StudentEntity1]
ON [dbo].[Entity1]
    ([StudentId]);
GO

-- Creating foreign key on [StudentId] in table 'Entity2'
ALTER TABLE [dbo].[Entity2]
ADD CONSTRAINT [FK_StudentEntity2]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentEntity2'
CREATE INDEX [IX_FK_StudentEntity2]
ON [dbo].[Entity2]
    ([StudentId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------