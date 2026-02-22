SELECT COUNT(*) FROM Telco_customer_churn;

UPDATE Telco_customer_churn SET CustomerID = LTRIM(RTRIM(CustomerID));
UPDATE Telco_customer_churn SET Gender = LTRIM(RTRIM(Gender));
UPDATE Telco_customer_churn SET Partner = LTRIM(RTRIM(Partner));
UPDATE Telco_customer_churn SET Dependents = LTRIM(RTRIM(Dependents));
UPDATE Telco_customer_churn SET Phone_Service = LTRIM(RTRIM(Phone_Service));
UPDATE Telco_customer_churn SET Multiple_Lines = LTRIM(RTRIM(Multiple_Lines));
UPDATE Telco_customer_churn SET Internet_Service = LTRIM(RTRIM(Internet_Service));
UPDATE Telco_customer_churn SET Online_Security = LTRIM(RTRIM(Online_Security));
UPDATE Telco_customer_churn SET Online_Backup = LTRIM(RTRIM(Online_Backup));
UPDATE Telco_customer_churn SET Device_Protection = LTRIM(RTRIM(Device_Protection));
UPDATE Telco_customer_churn SET Tech_Support = LTRIM(RTRIM(Tech_Support));
UPDATE Telco_customer_churn SET Streaming_TV = LTRIM(RTRIM(Streaming_TV));
UPDATE Telco_customer_churn SET Streaming_Movies = LTRIM(RTRIM(Streaming_Movies));
UPDATE Telco_customer_churn SET Contract = LTRIM(RTRIM(Contract));
UPDATE Telco_customer_churn SET Paperless_Billing = LTRIM(RTRIM(Paperless_Billing));
UPDATE Telco_customer_churn SET Payment_Method = LTRIM(RTRIM(Payment_Method));
UPDATE Telco_customer_churn SET Churn_Label = LTRIM(RTRIM(Churn_Label));
UPDATE Telco_customer_churn SET Churn_Reason = LTRIM(RTRIM(Churn_Reason));


SELECT Total_Charges
FROM Telco_customer_churn
WHERE TRY_CAST(Total_Charges AS DECIMAL(10,2)) IS NULL
AND Total_Charges IS NOT NULL;

UPDATE Telco_customer_churn
SET Total_Charges = NULL
WHERE TRY_CAST(Total_Charges AS DECIMAL(10,2)) IS NULL;

ALTER TABLE Telco_customer_churn
ALTER COLUMN Total_Charges DECIMAL(10,2);

SELECT TOP 10 Monthly_Charges, Total_Charges
FROM Telco_customer_churn;

ALTER TABLE Telco_customer_churn
ALTER COLUMN Monthly_Charges DECIMAL(10,2);

ALTER TABLE Telco_customer_churn
ALTER COLUMN Total_Charges DECIMAL(10,2);

SELECT 
    COUNT(*) AS Total_Customers,
    SUM(Churn_Value) AS Churned_Customers,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS Churn_Rate_Percentage
FROM Telco_customer_churn;

SELECT 
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(Churn_Value) AS Churned,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS Churn_Percentage
FROM Telco_customer_churn
GROUP BY Contract
ORDER BY Churn_Percentage DESC;

SELECT 
    Internet_Service,
    COUNT(*) AS Total_Customers,
    SUM(Churn_Value) AS Churned,
    ROUND(SUM(Churn_Value) * 100.0 / COUNT(*), 2) AS Churn_Percentage
FROM Telco_customer_churn
GROUP BY Internet_Service
ORDER BY Churn_Percentage DESC;

SELECT 
    SUM(Monthly_Charges) AS Monthly_Revenue_Loss
FROM Telco_customer_churn
WHERE Churn_Value = 1;

SELECT 
    Churn_Label,
    AVG(CLTV) AS Avg_CLTV
FROM Telco_customer_churn
GROUP BY Churn_Label;

SELECT 
    CustomerID,
    Tenure_Months,
    Monthly_Charges,
    Contract,
    Churn_Score
FROM Telco_customer_churn
WHERE Contract = 'Month-to-month'
AND Monthly_Charges > 70
AND Tenure_Months < 12
ORDER BY Churn_Score DESC;