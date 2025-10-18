/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
*/
MERGE [dbo].[ReleaseVersion] AS target
USING (VALUES 
    (1, N'v1.0.0'),
    (2, N'v1.0.1')
) AS source ([Id], [Version])
ON target.[Id] = source.[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Version], [CreatedDateTime])
    VALUES (source.[Id], source.[Version], SYSDATETIMEOFFSET());

MERGE [dbo].[ProjectDetails] AS target
USING (VALUES 
    (1, 'Verisma MRR', 'Medical Record Request Automation', 'Prajitha'),
    (2, 'DataSync', 'Automated Data Synchronization Service', 'Jayakumar'),
    (3, 'OpenReplay POC', 'Frontend Session Replay Integration', 'Ranish')
) AS source ([Id], [ProjectName], [ProjectDescription], [CreatedBy])
ON target.[Id] = source.[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [ProjectName], [ProjectDescription], [CreatedBy])
    VALUES (source.[Id], source.[ProjectName], source.[ProjectDescription], source.[CreatedBy]);