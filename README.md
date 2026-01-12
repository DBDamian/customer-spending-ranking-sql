#customer-spending-ranking-sql

📌 Project: Top 3 Customers by Spending per Country
1. Problem Statement

Identify the top 3 customers by total spending within each country.

2. Business Value

This analysis helps the business identify high-value customers in each market.
By understanding who the top spenders are per country, the company can design targeted engagement, loyalty, and retention strategies, as well as support data-driven commercial decisions.

3. SQL Approach

Aggregate total spending per customer.

Rank customers within each country using window functions.

Filter results to retain only the top 3 customers per country.

4. Key SQL Concepts Used

LEFT JOIN

GROUP BY

Common Table Expressions (CTEs)

Window functions: RANK() OVER (PARTITION BY ...)
