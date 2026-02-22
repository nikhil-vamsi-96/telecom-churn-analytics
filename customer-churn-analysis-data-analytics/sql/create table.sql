USE customer_churn_db;
GO

SELECT TOP 1 * FROM churn_data;

UPDATE churn_data SET customerID = LTRIM(RTRIM(customerID));
UPDATE churn_data SET gender = LTRIM(RTRIM(gender));
UPDATE churn_data SET Partner = LTRIM(RTRIM(Partner));
UPDATE churn_data SET Dependents = LTRIM(RTRIM(Dependents));
UPDATE churn_data SET PhoneService = LTRIM(RTRIM(PhoneService));
UPDATE churn_data SET MultipleLines = LTRIM(RTRIM(MultipleLines));
UPDATE churn_data SET InternetService = LTRIM(RTRIM(InternetService));
UPDATE churn_data SET OnlineSecurity = LTRIM(RTRIM(OnlineSecurity));
UPDATE churn_data SET OnlineBackup = LTRIM(RTRIM(OnlineBackup));
UPDATE churn_data SET DeviceProtection = LTRIM(RTRIM(DeviceProtection));
UPDATE churn_data SET TechSupport = LTRIM(RTRIM(TechSupport));
UPDATE churn_data SET StreamingTV = LTRIM(RTRIM(StreamingTV));
UPDATE churn_data SET StreamingMovies = LTRIM(RTRIM(StreamingMovies));
UPDATE churn_data SET Contract = LTRIM(RTRIM(Contract));
UPDATE churn_data SET PaperlessBilling = LTRIM(RTRIM(PaperlessBilling));
UPDATE churn_data SET PaymentMethod = LTRIM(RTRIM(PaymentMethod));
UPDATE churn_data SET Churn = LTRIM(RTRIM(Churn));

SELECT COUNT(*) AS Total_Rows FROM churn_data;

SELECT COUNT(DISTINCT customerID) AS Unique_Customers
FROM churn_data;

SELECT customerID, COUNT(*)
FROM churn_data
GROUP BY customerID
HAVING COUNT(*) > 1;

ALTER TABLE churn_data
ALTER COLUMN TotalCharges DECIMAL(10,2);

