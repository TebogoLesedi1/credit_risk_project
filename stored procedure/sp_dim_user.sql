CREATE PROCEDURE Sp_dim_user AS

BEGIN
----Dim_User--------------
DROP TABLE IF EXISTS [credit_std].[dbo].[dim_user];
CREATE TABLE [credit_std].[dbo].[dim_user](
	[user_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[SA_ID_Number] [nvarchar](50) NOT NULL,
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[DOB] DATE NOT NULL
)
INSERT INTO [credit_std].[dbo].[dim_user](SA_ID_Number, First_Name, Last_Name, DOB)
 SELECT DISTINCT
 LEFT([SA_ID_Number],6) + '*******' + RIGHT([SA_ID_Number],3) AS MASKED_SA_ID
,[First_Name]
,[Last_Name]
,[DOB]
FROM [credit_std].[dbo].[credit_risk_10k_records];

SELECT *
FROM [credit_std].[dbo].[dim_user]



END;