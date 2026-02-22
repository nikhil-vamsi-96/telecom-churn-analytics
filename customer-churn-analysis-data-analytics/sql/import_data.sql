/*
====================================================
File: import_data.sql
Project: Customer Churn Analysis
Database: customer_churn_db
Table: dbo.cleaned_churn_data
====================================================

Description:
Data was imported into SQL Server using the
"Import Flat File Wizard" in SQL Server Management Studio (SSMS).

Source File:
cleaned_churn_data.csv

Import Settings:
- Data types manually verified and corrected
- NVARCHAR used for categorical columns
- FLOAT used for monetary columns
- INT used for numeric fields
- NULL values allowed where applicable
====================================================
*/

-- (Optional) Example of how data could be imported using BULK INSERT

/*
BULK INSERT dbo.cleaned_churn_data
FROM 'C:\customer-churn-analysis-data-analytics\data\processed\cleaned_churn_data.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
*/