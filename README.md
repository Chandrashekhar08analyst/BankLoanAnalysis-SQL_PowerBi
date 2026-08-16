# 🏦 BaBank Loan & Credit Risk Analytics

![Loan Portfolio Analytics](https://github.com/user-attachments/assets/b9238e1f-83ea-4649-bd25-98d8da9bdb58)

## Introduction

The **Loan Portfolio & Credit Risk Analytics** project analyzes loan application and repayment data to evaluate **portfolio performance, credit quality, borrower characteristics, and repayment trends**.

The project combines **PostgreSQL for data processing and analytical querying** with **Power BI for interactive reporting and dashboard development**.

The analysis focuses on understanding loan growth, funded capital, repayments, loan quality, borrower profiles, loan purposes, and risk indicators to support **data-driven lending and portfolio management decisions**.

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Business Questions

The analysis focuses on the following key questions:

1. How is the loan portfolio performing over time?
2. How many loans are being applied for and funded?
3. How much capital has been funded and received?
4. What proportion of loans are classified as Good vs Bad?
5. Which loan purposes generate the highest funded and received amounts?
6. How do loan terms impact portfolio performance?
7. Which borrower characteristics are associated with repayment performance?
8. How does the Debt-to-Income (DTI) ratio vary across borrowers?
9. What are the Month-to-Date (MTD) and Month-over-Month (MoM) portfolio trends?
10. Which segments require greater credit-risk attention?

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Technology Used

* **PostgreSQL**

  * PostgreSQL is used for data preparation, transformation, aggregation, and analytical querying.
  * **Aggregations:** Loan applications, funded amounts, received amounts, and portfolio metrics.
  * **Date Functions:** MTD and MoM performance analysis.
  * **Conditional Logic:** Good vs Bad loan classification and portfolio segmentation.
  * **Analytical Queries:** Borrower, loan-purpose, term, employment, and repayment analysis.

* **Power BI**

  * Power BI is used to build interactive dashboards and translate portfolio metrics into actionable business insights.
  * **DAX:** KPI calculations and time-based metrics.
  * **Interactive Visualizations:** Trends, segmentation, geographic analysis, and loan-purpose analysis.
  * **Dashboard Design:** Summary, Overview, and Details reporting pages.

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Data Analysis

The analysis evaluates the loan portfolio across multiple business dimensions.

### Portfolio Performance

Key portfolio metrics include:

* Total Loan Applications
* Funded Amount
* Amount Received
* Average Interest Rate
* Average Debt-to-Income Ratio
* Month-to-Date Performance
* Month-over-Month Growth

![SQL Analysis](https://github.com/user-attachments/assets/8a749622-562a-461e-9881-eb19dea21763)

### Credit Quality

Loans were segmented into:

* **Good Loans**
* **Bad Loans**

This segmentation provides a high-level view of portfolio credit quality and helps identify areas requiring additional risk monitoring.

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Loan Portfolio Analysis

### Loan Term Analysis

Loan performance was analyzed across different repayment terms to understand funding and repayment behavior.

* **36-Month Loans:** Approximately $273M funded
* **60-Month Loans:** Approximately $162.7M funded

### Loan Purpose Analysis

Loan purposes were analyzed to identify major contributors to portfolio funding and repayments.

Key purposes include:

* Debt Consolidation
* Credit Cards
* Other Loan Purposes

### Employment Analysis

Borrower employment length was analyzed to understand its relationship with repayment behavior.

Borrowers with longer employment histories demonstrate stronger repayment contribution within the analyzed portfolio.

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Power BI Dashboard

The analysis was transformed into an interactive **Power BI dashboard** consisting of three reporting views.

### 1. Portfolio Summary

The Summary dashboard provides a high-level view of:

* Loan Applications
* Funded Amount
* Amount Received
* Average Interest Rate
* Average DTI
* Good vs Bad Loans

![Portfolio Summary](https://github.com/user-attachments/assets/b9238e1f-83ea-4649-bd25-98d8da9bdb58)

### 2. Portfolio Overview

The Overview dashboard provides detailed analysis through:

* Loan performance trends
* Regional analysis
* Loan-purpose distribution
* Term analysis
* Employment analysis
* Portfolio segmentation

![Portfolio Overview](https://github.com/user-attachments/assets/39ff851d-3313-4477-b398-ddf7bf56e42a)

### 3. Loan Details

The Details dashboard provides a comprehensive view of individual loan-level metrics and portfolio attributes.

![Loan Details](https://github.com/user-attachments/assets/61a866c6-3ec3-49b2-ac52-ffa753c86c23)

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Key Insights

| Analysis Area       | Key Insight                                                                                                                                        |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Credit Quality**  | Good loans represent approximately **86.2%** of the portfolio, while Bad loans represent approximately **13.8%**.                                  |
| **Loan Term**       | 36-month loans account for approximately **$273M** in funded amount compared with **$162.7M** for 60-month loans.                                  |
| **Employment**      | Borrowers with more than 10 years of employment contribute significantly to repayments.                                                            |
| **Loan Purpose**    | **Debt Consolidation** is the largest contributor, with approximately **$253.8M received**, followed by Credit Cards at approximately **$65.21M**. |
| **Risk Monitoring** | Bad-loan performance provides an important indicator for portfolio-level credit-risk monitoring.                                                   |

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Business Recommendations

### 1. Strengthen Credit Risk Assessment

Use borrower characteristics, DTI, employment history, and historical repayment behavior to improve credit-risk evaluation and reduce bad-loan exposure.

### 2. Monitor Bad Loan Segments

Track bad-loan trends by **loan purpose, term, borrower profile, and geography** to identify segments requiring additional risk controls.

### 3. Optimize Loan Portfolio Mix

Analyze loan terms and purposes to understand their contribution to funding, repayments, and overall portfolio quality.

### 4. Monitor Portfolio Trends

Use MTD and MoM metrics to identify changes in loan demand, funding, and repayment performance and support timely portfolio decisions.

### 5. Focus on High-Performing Segments

Identify borrower and loan segments demonstrating stronger repayment behavior and use these insights to improve portfolio allocation.

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Project Structure

```text
Loan-Portfolio-Credit-Risk-Analytics/
│
├── Dataset/
│   └── bank_loan_data.csv
│
├── SQL/
│   └── Loan_Analysis.sql
│
├── PowerBI/
│   └── Loan_Portfolio_Dashboard.pbix
│
└── README.md
```

<p align="left">
  <img src="https://www.animatedimages.org/data/media/562/animated-line-image-0184.gif" width="100%">
</p>

## Conclusion

The **Loan Portfolio & Credit Risk Analytics** project demonstrates an end-to-end analytical workflow using **PostgreSQL and Power BI** to evaluate loan portfolio performance and credit quality.

The analysis combines **portfolio KPIs, Good vs Bad loan segmentation, borrower profiling, loan-purpose analysis, repayment trends, DTI analysis, and time-based performance metrics** to provide a comprehensive view of lending performance.

These insights can support **credit-risk monitoring, portfolio optimization, borrower assessment, and data-driven lending decisions**.
