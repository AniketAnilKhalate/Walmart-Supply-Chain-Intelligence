
# Data Dictionary

## Project Overview

This project uses the Walmart M5 Forecasting dataset to analyse historical product sales, calendar information, and selling prices.

## 1. Calendar Table

| Column | Description |
|---|---|
| d | Unique day identifier used to connect sales to dates |
| date | Calendar date |
| wm_yr_wk | Walmart year-week identifier |

## 2. Sales Table

| Column | Description |
|---|---|
| id | Unique product-store sales series identifier |
| item_id | Product identifier |
| dept_id | Department identifier |
| cat_id | Product category |
| store_id | Store identifier |
| state_id | State identifier |
| d_1, d_2, ... | Units sold on each corresponding day |

## 3. Sell Prices Table

| Column | Description |
|---|---|
| store_id | Store identifier |
| item_id | Product identifier |
| wm_yr_wk | Week identifier |
| sell_price | Selling price for the product at the store during that week |

## 4. Power BI Sales Analysis

The Power BI report uses a transformed version of the sales data.

| Column | Description |
|---|---|
| d | Day identifier |
| units_sold | Units sold on that day |
| item_id | Product identifier |
| store_id | Store identifier |
| dept_id | Department identifier |
| cat_id | Product category |
| state_id | State identifier |

## Important Limitations

- The current Power BI dashboard analyses the first 90 days of sales data.
- The dataset does not directly provide actual inventory-on-hand, purchase orders, or supplier lead times.
- Sales quantities should not be interpreted as inventory levels.
