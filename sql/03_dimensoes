-- 3 Criação das tabelas de dimensão e fato.

-- 3.1 Tabelas de dimensão

CREATE TABLE analytics.d_customer (
	customer_id INT PRIMARY KEY
);

CREATE TABLE analytics.d_product (
	product_category NVARCHAR(100) PRIMARY KEY
);

CREATE TABLE analytics.d_region (
	region NVARCHAR(50) PRIMARY KEY
);

CREATE TABLE analytics.d_payment (
	payment_method NVARCHAR(50) PRIMARY KEY
);

CREATE TABLE analytics.d_date (
	order_date DATE PRIMARY KEY,
	year INT,
	month INT,
	day INT,
	weekday NVARCHAR(20)
);
