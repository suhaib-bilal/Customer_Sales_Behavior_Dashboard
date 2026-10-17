SELECT *
FROM sales_db.sales_data
LIMIT 10;
SELECT ROUND(SUM(sales_amount),2) AS total_revenue
FROM sales_data ;
SELECT
    product_id,
    ROUND(SUM(Sales_amount), 2) AS total_revenue
FROM sales_data
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;
SELECT
    product_category,
    ROUND(SUM(Sales_amount), 2) AS total_revenue
FROM sales_data
GROUP BY product_category
ORDER BY total_revenue DESC;
SELECT
    DATE_FORMAT(`sale_date`, '%Y-%m') AS sales_month,
    ROUND(SUM(Sales_amount), 2) AS monthly_revenue
FROM sales_data
WHERE `sale_date` IS NOT NULL
GROUP BY DATE_FORMAT(`sale_date`, '%Y-%m')
ORDER BY sales_month;
SELECT
    region,
    ROUND(SUM(Sales_amount), 2) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;
SELECT
    product_id,
    SUM(quantity_sold) AS total_quantity,
    ROUND(SUM(sales_amount), 2) AS total_revenue,
    ROUND(
        SUM(sales_amount) / NULLIF(SUM(quantity_sold), 0),
        2
    ) AS revenue_per_unit
FROM sales_data
GROUP BY product_id
HAVING SUM(quantity_sold) > 0
ORDER BY revenue_per_unit DESC
LIMIT 10;
SELECT
    region,
    ROUND(SUM(sales_amount), 2) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;
SELECT
    product_id,
    SUM(quantity_sold) AS total_quantity,
    ROUND(SUM(sales_amount), 2) AS total_revenue,
    ROUND(
        SUM(sales_amount) / NULLIF(SUM(quantity_sold), 0),
        2
    ) AS revenue_per_unit
FROM sales_data
GROUP BY product_id
HAVING SUM(quantity_sold) > 0
ORDER BY revenue_per_unit DESC
LIMIT 10;