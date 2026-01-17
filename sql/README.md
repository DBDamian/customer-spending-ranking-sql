
🧾 Project Summary

This project analyzes customer spending data to identify the top three customers by total spending within each country.

By leveraging SQL aggregations and window functions, the analysis highlights high-value customers in each market. 
These insights can support targeted marketing campaigns, loyalty programs, and customer retention strategies by focusing on the most valuable customers per country.

📊 Result Table
| country | customer_id | name | total_amount | spending_rank |
|--------|-------------|------|--------------|----------------|
| Spain  | 101 | Ana   | 5200 | 1 |
| Spain  | 104 | Luis  | 4300 | 2 |
| Spain  | 109 | Marta | 3950 | 3 |
| UK     | 203 | Tom   | 6100 | 1 |
| UK     | 207 | Emma  | 5400 | 2 |
| UK     | 212 | Jack  | 4800 | 3 |

The table shows the top three customers per country ranked by total spending.

🛠️ Tools Used

- SQL (PostgreSQL / MySQL compatible syntax)
- GitHub for version control and documentation

:memo: Dataset Description

This project uses two tables:

👤 customers
| column | description |
|------|-------------|
| customer_id | Unique customer identifier |
| name | Customer name |
| country | Customer country |

🧾 orders
| column | description |
|------|-------------|
| order_id | Unique order identifier |
| customer_id | Foreign key referencing customers |
| amount | Order amount |

The dataset reflects a one-to-many relationship where each customer can place multiple orders over time.
