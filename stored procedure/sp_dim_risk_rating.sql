CREATE PROCEDURE Sp_dim_risk_rating AS

BEGIN
DROP TABLE IF EXISTS [credit_std].[dbo].[dim_Risk_Rating];
CREATE TABLE [credit_std].[dbo].[dim_Risk_Rating](
	[risk_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Risk_Rating] [nvarchar](50) NOT NULL,
	
)
INSERT INTO [credit_std].[dbo].[dim_Risk_Rating](Risk_Rating)
 SELECT DISTINCT
[Risk_Rating]
FROM [credit_std].[dbo].[credit_risk_10k_records];

SELECT *
FROM [credit_std].[dbo].[dim_Risk_Rating]
END;