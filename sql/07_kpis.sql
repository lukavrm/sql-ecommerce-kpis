-- 7. Criação das análises


-- 7.1 Receita total

SELECT
	FORMAT(SUM(f_sales.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales;

-- 7.2 Quantidade total de itens vendidos

SELECT
	SUM(f_sales.quantity) AS total_quantity
FROM
	analytics.f_sales;

-- 7.3 Ticket médio

SELECT
	FORMAT(SUM(f_sales.revenue) / COUNT(f_sales.order_id), 'N2', 'en-US') AS average_ticket
FROM
	analytics.f_sales;

-- 7.4 Receita por categoria

SELECT
	dp.product_category,
	FORMAT(SUM(revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
JOIN
	analytics.d_product dp
ON
	fs.product_category = dp.product_category
GROUP BY
	dp.product_category;

-- 7.5 Receita por região

SELECT	
	fs.region,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_region_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	fs.region;

-- 7.6 Quantidade vendida por categoria

SELECT
	fs.product_category,
	SUM(fs.quantity) AS total_quantity
FROM
	analytics.f_sales fs
GROUP BY
	fs.product_category
ORDER BY
	total_quantity DESC;

-- 7.7 Ticket médio por categoria

SELECT
	fs.product_category,
	FORMAT(SUM(fs.revenue) / COUNT(fs.order_id), 'N2', 'en-US') AS average_ticket_category
FROM
	analytics.f_sales fs
GROUP BY
	fs.product_category
ORDER BY
	SUM(fs.revenue) / COUNT(fs.order_id) DESC;

-- 7.8 Quantidade vendida por região

SELECT
	fs.region,
	SUM(fs.quantity) AS total_quantity_region
FROM
	analytics.f_sales FS
GROUP BY
	fs.region
ORDER BY
	total_quantity_region DESC;

-- 7.9 Ticket médio por região

SELECT
	fs.region,
	FORMAT(SUM(fs.revenue) / COUNT(fs.order_id), 'N2', 'en-US') AS average_ticket_region
FROM
	analytics.f_sales fs
GROUP BY
	fs.region
ORDER BY
	SUM(fs.revenue) / COUNT(fs.order_id) DESC;

-- 7.10 Receita por método de pagamento

SELECT
	fs.payment_method,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	fs.payment_method
ORDER BY
	SUM(fs.revenue) DESC;

-- 7.11 Número de pedidos por método de pagamento

SELECT
	fs.payment_method,
	COUNT(fs.order_id) AS total_orders
FROM
	analytics.f_sales fs
GROUP BY
	fs.payment_method
ORDER BY
	total_orders DESC;

-- 7.12 Receita por dia da semana

SELECT
	DATENAME(WEEKDAY,fs.order_date) AS weekday_name,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	DATENAME(WEEKDAY,fs.order_date)
ORDER BY
	SUM(fs.revenue) DESC;

-- 7.13 Receita por mês

SELECT
	CONCAT(YEAR(fs.order_date), '-', RIGHT('00' + CAST(MONTH(fs.order_date) AS VARCHAR(2)), 2)) AS year_month,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	YEAR(fs.order_date),
	MONTH(fs.order_date)
ORDER BY
	YEAR(fs.order_date),
	MONTH(fs.order_date);

-- 7.14 Receita por trimestre

SELECT
	CONCAT(YEAR(fs.order_date), '-Q', DATEPART(QUARTER, fs.order_date)) AS year_quarter,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	CONCAT(YEAR(fs.order_date), '-Q', DATEPART(QUARTER, fs.order_date))
ORDER BY
	CONCAT(YEAR(fs.order_date), '-Q', DATEPART(QUARTER, fs.order_date));

-- 7.15 Receita por ano

SELECT
	YEAR(fs.order_date) AS [year],
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue_millions
FROM
	analytics.f_sales fs
GROUP BY
	YEAR(fs.order_date)
ORDER BY
	YEAR(fs.order_date);

-- 7.16	Quantidade vendida por mês

SELECT
	CONCAT(YEAR(fs.order_date), '-' , RIGHT('00' + CAST(MONTH(fs.order_date) AS VARCHAR(2)), 2)) AS year_month,
	SUM(fs.quantity) AS total_quantity
FROM
	analytics.f_sales fs
GROUP BY
	YEAR(fs.order_date),
	MONTH(fs.order_date)
ORDER BY
	YEAR(fs.order_date),
	MONTH(fs.order_date);

-- 7.17 Ticket médio por mês

SELECT
	CONCAT(YEAR(fs.order_date), '-', RIGHT('00' + CAST(MONTH(fs.order_date) AS VARCHAR(2)), 2)) AS year_month,
	FORMAT(SUM(fs.revenue) / COUNT(fs.order_id), 'N2' ,'en-US') AS average_ticket
FROM
	analytics.f_sales fs
GROUP BY
	YEAR(fs.order_date),
	MONTH(fs.order_date)
ORDER BY
	YEAR(fs.order_date),
	MONTH(fs.order_date);

-- 7.18 Receita por dia do mês

SELECT
	DAY(fs.order_date) AS day_of_month,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue
FROM
	analytics.f_sales fs
GROUP BY
	DAY(fs.order_date)
ORDER BY
	DAY(fs.order_date);

-- 7.19 Receita por caegoria x região

SELECT
	fs.product_category,
	fs.region,
	FORMAT(SUM(fs.revenue) / 1000000.0, 'N2', 'en-US') AS total_revenue
FROM
	analytics.f_sales fs
GROUP BY
	fs.product_category,
	fs.region
ORDER BY
	fs.product_category,
	fs.region;

-- 7.20 ticket médio por categoria x região

SELECT
	fs.product_category,
	fs.region,
	FORMAT(SUM(fs.revenue) / COUNT(fs.order_id), 'N2', 'en-US') AS average_ticket
FROM
	analytics.f_sales fs
GROUP BY
	fs.product_category,
	fs.region
ORDER BY
	fs.product_category,
	fs.region;

-- 7.21 Impacto do desconto por categoria

SELECT
	dp.product_category,
	FORMAT(SUM(fs.discount), 'N2', 'en-US') AS total_discount_value
FROM
	analytics.f_sales fs
JOIN
	analytics.d_product dp
ON
	fs.product_category = dp.product_category
GROUP BY
	dp.product_category
ORDER BY
	dp.product_category;

-- 7.22 Impacto do desconto por região

SELECT
	dp.region,
	FORMAT(SUM(fs.discount), 'N2', 'en-US') AS total_discount_value
FROM
	analytics.f_sales fs
JOIN
	analytics.d_region dp
ON
	fs.region = dp.region
GROUP BY
	dp.region
ORDER BY
	dp.region;
