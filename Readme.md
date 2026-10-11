# Walmart Supply Chain Intelligence & Demand Analysis

**Tools:** SQL · SQLite · Power Query · DAX · Microsoft Power BI

## Project Overview

This project analyses historical Walmart retail sales data to investigate demand patterns, store-level performance, and product category trends.

The goal is to turn retail sales data into an interactive business intelligence report that helps users explore demand over time and compare performance across stores, states, and product categories.

This project demonstrates data validation, data transformation, data modelling, KPI development, SQL analysis, and business-focused reporting skills relevant to Supply Chain Analyst and Data Analyst roles.

## Dashboard Preview

![Walmart Supply Chain Intelligence Dashboard](screenshots/walmart_dashboard.png)

## Business Questions

- How does unit sales volume change over time?
- Which stores and states contribute the most unit sales?
- How do FOODS, HOBBIES, and HOUSEHOLD compare in sales volume?
- How can users investigate sales patterns using date, state, store, and category filters?
- What additional analysis could support demand planning and retail operations?

## Tools and Technologies

| Tool | Application |
|---|---|
| SQLite and DB Browser for SQLite | Data storage, SQL queries, and validation |
| Power Query | Data preparation and transformation |
| DAX | Measures and KPI calculations |
| Microsoft Power BI | Interactive dashboard and visual analysis |
| GitHub | Version control and project documentation |

## Dataset

This project uses the M5 Walmart sales forecasting dataset from the Kaggle M5 Forecasting competition.

The source data includes:
- Historical daily unit sales by product and store
- Calendar dates and event-related information
- Weekly selling prices by product and store

The current Power BI sales analysis uses the first 90 daily sales columns as a sample to keep the initial analysis manageable.

The source dataset contains multiple products, stores, and states. The analysis focuses on unit sales rather than revenue unless selling prices have been successfully incorporated into a calculation.

**Source:** https://www.kaggle.com/competitions/m5-forecasting-accuracy

## Data Preparation and Methodology

1. Imported calendar, sales, and selling-price data into SQLite.
2. Validated row counts, identifier uniqueness, date coverage, and price values.
3. Connected the data to Power BI through an ODBC connection.
4. Used Power Query to select the initial 90 daily sales columns and reshape the sales table from a wide format to a long format.
5. Connected the reshaped sales data to the calendar table using the day identifier.
6. Created DAX measures for total units sold, distinct products, distinct stores, and average daily unit sales.
7. Developed interactive visuals and slicers for demand exploration.

## Dashboard Features

- **Total Units Sold:** Sum of recorded unit sales within the current filter context.
- **Products Count:** Distinct products represented in the analysis.
- **Stores Count:** Distinct stores represented in the analysis.
- **Daily Sales Trend:** Unit sales across the selected analysis period.
- **Store Performance:** Comparison of unit sales by store.
- **Category Performance:** Comparison of unit sales across product categories.
- **Interactive Filters:** Explore the results by date, state, store, and category.

## Business Insights

The dashboard supports investigation of the following business questions:

- Identify stores with relatively high or low unit sales within the selected period.
- Compare category demand to understand how sales volume differs across product groups.
- Observe changes in daily demand that may warrant further investigation.
- Filter the analysis to investigate whether demand patterns vary across states and stores.

Specific findings and recommendations should be added after reviewing the actual chart values and validating the underlying calculations. No unverified sales rankings or trends are assumed in this project description.

## Supply Chain Relevance

Understanding historical demand is an important input to retail planning. This analysis can help demonstrate how sales history may be used to inform further investigation of:

- Demand patterns and demand variability
- Store-level replenishment planning
- Product category planning
- Potential seasonal or event-related changes in demand
- Products or stores that may merit closer operational review

These are potential applications of the analysis, not direct measurements of inventory availability or replenishment performance.

## Limitations

- The current Power BI sales analysis uses a 90-day sample rather than the complete historical sales period.
- Unit sales do not directly measure revenue, profit, inventory levels, or stockouts.
- The current analysis does not contain actual inventory-on-hand records, supplier lead times, or purchase orders.
- Selling-price data is available in the source dataset, but revenue or price-based conclusions should only be reported after the price data has been correctly matched to the sales records.
- The dashboard is descriptive; it does not yet implement a validated demand forecasting model.

## Future Improvements

- Expand the analysis to the full historical period.
- Incorporate weekly selling prices and calculate sales value where appropriate.
- Investigate weekly and seasonal demand patterns.
- Add more SQL queries for store, category, and time-based comparisons.
- Develop and evaluate a demand forecasting model.
- Add validated business findings and recommendations based on measured results.

## Repository Structure

- `powerbi/` — Power BI report, if included
- `sql/` — SQL validation and analytical queries
- `screenshots/` — Dashboard preview
- `data/` — Dataset documentation and data dictionary

## Author

This project is part of a data analytics portfolio focused on retail demand, supply chain analysis, SQL, and Power BI.

## Dashboard Preview
<img width="615" height="345" alt="walmart_dashboard" src="https://github.com/user-attachments/assets/39e4ae08-c23f-45d1-b792-674e35c46d36" />

