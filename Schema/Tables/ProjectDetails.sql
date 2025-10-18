CREATE TABLE [dbo].[ProjectDetails]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [ProjectName] NVARCHAR(50) NOT NULL, 
    [ProjectDescription] NVARCHAR(50) NOT NULL, 
    [CreatedBy] NVARCHAR(50) NOT NULL
)
