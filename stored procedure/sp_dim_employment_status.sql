

CREATE PROCEDURE Sp_dim_employment_status AS

BEGIN
DROP TABLE IF EXISTS [credit_std].[dbo].[dim_Employment_Status];
CREATE TABLE [credit_std].[dbo].[dim_Employment_Status](
	[Employment_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Employment_Status] [nvarchar](50) NOT NULL,
	
)
INSERT INTO [credit_std].[dbo].[dim_Employment_Status](Employment_Status)
 SELECT DISTINCT
[Employment_Status]
FROM [credit_std].[dbo].[credit_risk_10k_records];

SELECT *
FROM [credit_std].[dbo].[dim_Employment_Status];
END;