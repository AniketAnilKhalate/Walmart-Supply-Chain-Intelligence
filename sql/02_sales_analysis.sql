
-- Walmart Supply Chain Intelligence
-- Sales analysis queries
-- Source: SQLite sales table

-- 1. Count products, stores, and states
SELECT
    COUNT(DISTINCT item_id) AS product_count,
    COUNT(DISTINCT store_id) AS store_count,
    COUNT(DISTINCT state_id) AS state_count
FROM sales;

-- 2. Sales by store and state
-- The sales table stores daily units in d_1, d_2, etc.
-- This example analyses the first seven days.
SELECT
    state_id,
    store_id,
    SUM(
        COALESCE(d_1, 0) +
        COALESCE(d_2, 0) +
        COALESCE(d_3, 0) +
        COALESCE(d_4, 0) +
        COALESCE(d_5, 0) +
        COALESCE(d_6, 0) +
        COALESCE(d_7, 0)
    ) AS units_sold_first_7_days
FROM sales
GROUP BY state_id, store_id
ORDER BY units_sold_first_7_days DESC;

-- 3. Sales by product category over the first seven days
SELECT
    cat_id,
    SUM(
        COALESCE(d_1, 0) +
        COALESCE(d_2, 0) +
        COALESCE(d_3, 0) +
        COALESCE(d_4, 0) +
        COALESCE(d_5, 0) +
        COALESCE(d_6, 0) +
        COALESCE(d_7, 0)
    ) AS units_sold_first_7_days
FROM sales
GROUP BY cat_id
ORDER BY units_sold_first_7_days DESC;
