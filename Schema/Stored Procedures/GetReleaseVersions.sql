CREATE PROCEDURE [dbo].[GetReleaseVersions]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT [Id], [Version], [CreatedDateTime]
    FROM [dbo].[ReleaseVersion];
END
GO