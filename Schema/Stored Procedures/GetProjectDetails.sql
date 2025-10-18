CREATE PROCEDURE [dbo].[GetProjectDetails]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT [Id], [ProjectName], [ProjectDescription], [CreatedBy]
    FROM [dbo].[ProjectDetails];
END
GO