CREATE PROCEDURE Sp_dim_location  AS

BEGIN
DROP TABLE IF EXISTS [credit_std].[dbo].[dim_location];
CREATE TABLE [credit_std].[dbo].[dim_location](
	[location_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Province] [nvarchar](50) NOT NULL,
	
)
INSERT INTO [credit_std].[dbo].[dim_location](Province)
 SELECT DISTINCT
[Province]
FROM [credit_std].[dbo].[credit_risk_10k_records];

SELECT *
FROM [credit_std].[dbo].[dim_location]
END;