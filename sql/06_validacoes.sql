-- 6. Verificações e Validações

-- 6.1 Contagem de linhas (Dados)

SELECT COUNT(*) FROM analytics.d_customer; --989
SELECT * FROM analytics.d_customer; --989

SELECT COUNT(*) FROM analytics.d_date; --5000
SELECT * FROM analytics.d_date; --5000

SELECT COUNT(*) FROM analytics.d_payment; --3
SELECT * FROM analytics.d_payment; --3

SELECT COUNT(*) FROM analytics.d_product; --4
SELECT * FROM analytics.d_product; --4

SELECT COUNT(*) FROM analytics.d_region; --4
SELECT * FROM analytics.d_region; --4

SELECT COUNT(*) FROM analytics.f_sales; --4
SELECT * FROM analytics.f_sales; --4

-- 6.2 Validação de (JOIN)

SELECT COUNT(*) 
	invalid_customers
FROM 
	analytics.f_sales fs
LEFT JOIN 
	analytics.d_customer dc 
ON 
	fs.customer_id = dc.customer_id
WHERE
	dc.customer_id IS NULL;
--

SELECT COUNT(*)
	invalid_products
FROM
	analytics.f_sales fs
LEFT JOIN 
	analytics.d_product dp
ON 
	fs.product_category = dp.product_category
WHERE
	dp.product_category IS NULL;

--

SELECT COUNT(*)
	invalid_regions
FROM
	analytics.f_sales fs
LEFT JOIN
	analytics.d_region dr
ON
	fs.region = dr.region
WHERE
	dr.region IS NULL;

--
	
SELECT COUNT(*)
	invalid_payment
FROM
	analytics.f_sales fs
LEFT JOIN
	analytics.d_payment dp
ON
	fs.payment_method = dp.payment_method
WHERE
	dp.payment_method IS NULL;

--

SELECT COUNT(*)
	invalid_dates
FROM
	analytics.f_sales fs
LEFT JOIN
	analytics.d_date dd
ON
	fs.order_date = dd.order_date
WHERE
	dd.order_date IS NULL;
