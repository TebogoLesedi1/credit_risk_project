CREATE PROCEDURE Sp_dim_gender AS

BEGIN
DROP TABLE IF EXISTS [credit_std].[dbo].[dim_gender];
CREATE TABLE [credit_std].[dbo].[dim_gender](
	[gender_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Gender] [nvarchar](50) NOT NULL,
	
)
INSERT INTO [credit_std].[dbo].[dim_gender](Gender)
 SELECT DISTINCT
[Gender]
FROM [credit_std].[dbo].[credit_risk_10k_records];

SELECT *
FROM [credit_std].[dbo].[dim_gender]
END;