--Stored procedure fact_table
CREATE PROCEDURE Sp_fact_credit AS

BEGIN
DROP TABLE IF EXISTS [credit_std].[dbo].[fact_credit];
CREATE TABLE [credit_std].[dbo].[fact_credit](
[loan_ID] INT IDENTITY(1,1) PRIMARY KEY,
[Transaction_ID] [nvarchar](50) NOT NULL,
[Annual_Income_ZAR] FLOAT NOT NULL,
[Monthly_Expenses_ZAR] FLOAT NOT NULL,
[Credit_Score] INT NOT NULL,
[Loan_Amount_ZAR] FLOAT NOT NULL,
[Loan_Term_Months] INT NOT NULL,
[Existing_Debt_ZAR] FLOAT NOT NULL
)
INSERT INTO [credit_std].[dbo].[fact_credit](Transaction_ID, Annual_Income_ZAR, Monthly_Expenses_ZAR, 
Credit_Score, Loan_Amount_ZAR, Loan_Term_Months, Existing_Debt_ZAR)
SELECT DISTINCT  
[Transaction_ID]
,[Annual_Income_ZAR]
,[Monthly_Expenses_ZAR]
,[Credit_Score]
,[Loan_Amount_ZAR]
,[Loan_Term_Months]
,[Existing_Debt_ZAR]
FROM [credit_std].[dbo].[credit_risk_10k_records];


END;