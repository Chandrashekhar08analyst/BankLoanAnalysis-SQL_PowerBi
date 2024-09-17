-- Good Loan v Bad Loan KPI’s

-- GOOD LOAN ISSUED 

-- Good Loan Percentage:

SELECT 
     (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0)/
     COUNT(id) AS Good_loan_percentage
FROM bank_loan;

-- Good Loan Applications:
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount:
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount  FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Amount Received:
SELECT SUM(total_payment) AS Good_Loan_amount_received  FROM bank_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


-- BAD LOAN ISSUED:

-- Bad Loan Percentage:
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan;

-- Bad Loan Applications:
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan
WHERE loan_status = 'Charged Off';


-- LOAN STATUS
SELECT loan_status,
       COUNT(id) AS LoanCount,
       SUM(total_payment) AS Total_Amount_Received,
       SUM(loan_amount) AS Total_Funded_Amount,
       AVG(int_rate * 100) AS Interest_Rate,
       AVG(dti * 100) AS DTI
FROM bank_loan
GROUP BY loan_status;


-- MTD Total Funded VS Received Amount
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan
WHERE EXTRACT(MONTH FROM issue_date) = 12 AND EXTRACT(YEAR FROM issue_date) = 2021
GROUP BY loan_status;
