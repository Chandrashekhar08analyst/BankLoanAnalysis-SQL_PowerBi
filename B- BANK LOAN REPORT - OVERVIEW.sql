-- B. BANK LOAN REPORT | OVERVIEW:
-- Monthly Trands:
WITH Monthly_Trands AS (
		SELECT EXTRACT(MONTH FROM ISSUE_DATE) AS Months,
			TO_CHAR(ISSUE_DATE, 'month') AS Month_Name,
			COUNT(ID) AS Total_Loan_Applications,
			SUM(loan_amount) AS Total_Funded_Amount,
			SUM(total_payment) AS Total_Amount_Received
		FROM Bank_Loan
		GROUP BY Months,Month_Name
		ORDER BY Months
	)
SELECT Month_Name,Total_Loan_Applications,
	Total_Funded_Amount,Total_Amount_Received
FROM Monthly_Trands;

-- State:
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY address_state
ORDER BY address_state;

-- TERM:
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY term
ORDER BY term;

-- EMPLOYEE LENGTH:
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY emp_length
ORDER BY emp_length;


-- PURPOSE:
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY purpose
ORDER BY purpose;


-- HOME OWNERSHIP:
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan
GROUP BY home_ownership
ORDER BY home_ownership;
