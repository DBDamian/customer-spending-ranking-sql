-- Step 1: Calculate total spending per customer
WITH customer_totals AS (
    SELECT
        c.customer_id,
        c.name,
        c.country,
        COALESCE(SUM(o.amount), 0) AS total_amount
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.name,
        c.country
),
-- Step 2: Rank customers by spending within each country
ranked_customers AS (
    SELECT
        customer_id,
        name,
        country,
        total_amount,
        RANK() OVER (
            PARTITION BY country
            ORDER BY total_amount DESC
        ) AS spending_rank
    FROM customer_totals
)
SELECT
    customer_id,
    name,
    country,
    total_amount,
    spending_rank
FROM ranked_customers
WHERE spending_rank <= 3
ORDER BY country, spending_rank;
