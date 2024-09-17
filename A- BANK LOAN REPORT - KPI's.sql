-- A.	BANK LOAN REPORT | SUMMARY
-- KPI’s:

-- Total Loan Applications:
SELECT COUNT(id) AS total_loan_applications FROM bank_loan;

-- MTD Loan Applications:
SELECT COUNT(id) AS MTD_total_loan_application FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

-- PMTD Loan Applications:
SELECT COUNT(id) AS PMTD_total_loan_application FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 11 AND EXTRACT(YEAR FROM issue_date) = 2021;


-- Total Funded Amount:
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan;

-- MTD Total Funded Amount:
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

-- PMTD Total Funded Amount:
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 11 AND EXTRACT(YEAR FROM issue_date) = 2021;


-- Total Amount Received:
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan;

-- MTD Total Amount Received:
SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

-- PMTD Total Amount Received:
SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 11 AND EXTRACT(YEAR FROM issue_date) = 2021;


-- Average Interest Rate:
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan;

-- MTD Average Interest Rate:
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

-- PMTD Average Interest Rate:
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 11 AND EXTRACT(YEAR FROM issue_date) = 2021;


-- Avg DTI:
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan;

-- MTD Avg DTI:
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021;

-- PMTD Avg DTI:
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan
WHERE 
	EXTRACT(MONTH FROM issue_date) = 11 AND EXTRACT(YEAR FROM issue_date) = 2021;	