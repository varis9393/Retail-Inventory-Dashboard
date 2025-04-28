-- Items Below Reorder Level
SELECT 
    item_id,
    item_name,
    stock_quantity,
    reorder_level,
    supplier_name
FROM inventory
WHERE stock_quantity < reorder_level
ORDER BY stock_quantity ASC;

-- Stock Summary by Category
SELECT 
    category,
    COUNT(*) AS total_items,
    SUM(stock_quantity) AS total_units,
    AVG(stock_quantity) AS avg_units_per_item
FROM inventory
GROUP BY category
ORDER BY total_units DESC;

-- Reorder Alert Count by Supplier
SELECT 
    supplier_name,
    COUNT(*) AS items_to_reorder
FROM inventory
WHERE stock_quantity < reorder_level
GROUP BY supplier_name
ORDER BY items_to_reorder DESC;
