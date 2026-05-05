--fact_table
SELECT DISTINCT  
[Transaction_ID]
,[Annual_Income_ZAR]
,[Monthly_Expenses_ZAR]
,[Credit_Score]
,[Loan_Amount_ZAR]
,[Loan_Term_Months]
,[Existing_Debt_ZAR]
FROM [credit_std].[dbo].[credit_risk_10k_records];

--Dim_User
 SELECT DISTINCT
 [SA_ID_Number]
,[First_Name]
,[Last_Name]
,[DOB]
FROM [credit_std].[dbo].[credit_risk_10k_records];

--Dim_gender
SELECT DISTINCT
[Gender]
FROM [credit_std].[dbo].[credit_risk_10k_records];

--Dim_Employment_Status
SELECT DISTINCT
[Employment_Status]
FROM [credit_std].[dbo].[credit_risk_10k_records];

--Dim_Location
SELECT DISTINCT
[Province]
FROM [credit_std].[dbo].[credit_risk_10k_records];

--Dim_Risk_Rating
SELECT DISTINCT
[Risk_Rating]
FROM [credit_std].[dbo].[credit_risk_10k_records];