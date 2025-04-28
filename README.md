# Retail Inventory Management Dashboard

**Objective**  
Design a dashboard to track inventory levels, prevent overstocking or stockouts, and assist store managers in making supply decisions.

**Tools Used**  
- SQL (stored procedures, joins, data aggregation)  
- Power BI (dashboard design, filters, conditional formatting)  
- Excel (PivotTables, VLOOKUP, forecasting)

**Dataset**  
Fictional dataset of retail items with stock quantity, category, reorder level, and supplier data.

**Key Features**  
- Dashboard highlights items below reorder threshold  
- Aggregated stock by category and supplier  
- Ability to forecast restock needs using historical movement trends

**Sample SQL Query**
```sql
SELECT 
  item_category, 
  COUNT(*) AS total_items, 
  SUM(CASE WHEN stock_qty < reorder_level THEN 1 ELSE 0 END) AS low_stock_count
FROM inventory
GROUP BY item_category;
