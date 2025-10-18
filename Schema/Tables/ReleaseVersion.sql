CREATE TABLE [dbo].[ReleaseVersion]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Version] NCHAR(10) NOT NULL, 
    [CreatedDateTime] DATETIMEOFFSET NOT NULL
)
