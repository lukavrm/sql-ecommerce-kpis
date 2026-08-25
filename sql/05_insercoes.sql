-- 4. Inserção de dados nas tabelas de dimensões.

INSERT INTO analytics.d_customer
	(customer_id)
SELECT DISTINCT
	customer_id
FROM
	analytics.E_commerce;

INSERT INTO analytics.d_product
	(product_category)
SELECT DISTINCT
	product_category
FROM
	analytics.E_commerce;

INSERT INTO analytics.d_region
	(region)
SELECT DISTINCT
	region
FROM
	analytics.E_commerce;

INSERT INTO analytics.d_payment
	(payment_method)
SELECT DISTINCT
	payment_method
FROM
	analytics.E_commerce;

INSERT INTO analytics.d_date
	(order_date, year, month, day, weekday)
SELECT DISTINCT
	order_date,
	YEAR(order_date),
	MONTH(order_date),
	DAY(Order_date),
	DATENAME(WEEKDAY, order_date)
FROM
	analytics.E_commerce;

-- 5. Inserção de dados na tabela fato.

INSERT INTO analytics.f_sales
	
SELECT
	order_id,
	order_date,
	customer_id,
	product_category,
	region,
	payment_method,
	quantity,
	unit_price,
	discount,
	delivery_days,
	customer_rating,
	revenue
FROM
	analytics.E_commerce;
