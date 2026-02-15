SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin
FROM stores_sales_forecasting;


SELECT 
    discount,
    SUM(profit) AS total_profit
FROM stores_sales_forecasting
GROUP BY discount
ORDER BY discount DESC;


SELECT 
    region,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM stores_sales_forecasting
GROUP BY region
ORDER BY profit DESC;


SELECT 
    product_name,
    SUM(profit) AS profit
FROM stores_sales_forecasting
GROUP BY product_name
HAVING profit < 0
ORDER BY profit;



SELECT 
    customer_name,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM stores_sales_forecasting
GROUP BY customer_name
ORDER BY sales DESC
LIMIT 10;
