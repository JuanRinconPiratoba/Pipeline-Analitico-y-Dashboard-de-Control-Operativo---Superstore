-- Ventas totales
SELECT SUM(sales)
FROM superstore_orders;

-- Ganancia total
SELECT SUM(profit)
FROM superstore_orders;

-- Ventas por categoría
SELECT 
    category,
	SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category
ORDER BY total_sales DESC;

-- Ganancia por región
SELECT
   region,
   SUM(profit) AS total_profit
FROM superstore_orders
GROUP BY region
ORDER BY total_profit DESC;

-- Top 10 clientes
SELECT
   customer_name,
   SUM(sales) AS sales
FROM superstore_orders 
GROUP BY customer_name
ORDER BY sales DESC
LIMIT 10;

-- Top 10 productos
SELECT
    product_name,
    SUM(sales) AS sales
FROM superstore_orders
GROUP BY product_name
ORDER BY sales DESC
LIMIT 10;

-- Subcategorías con pérdidas
SELECT
    sub_category,
    SUM(profit) AS profit
FROM superstore_orders
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY profit;

