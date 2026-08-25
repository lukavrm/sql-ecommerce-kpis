-- 3.2 Tabela fato.

CREATE TABLE analytics.f_sales (
	order_id INT PRIMARY KEY,
	order_date DATE,
	customer_id INT,
	product_category NVARCHAR(100),
	region NVARCHAR(50),
	payment_method NVARCHAR(50),
	quantity INT,
	unit_price FLOAT,
	discount FLOAT,
	delivery_days INT,
	customer_rating FLOAT,
	revenue FLOAT,

	FOREIGN KEY (order_date) REFERENCES analytics.d_date(order_date),
	FOREIGN KEY (customer_id) REFERENCES analytics.d_customer(customer_id),
	FOREIGN KEY (product_category) REFERENCES analytics.d_product(product_category),
	FOREIGN KEY (region) REFERENCES analytics.d_region(region),
	FOREIGN KEY (payment_method) REFERENCES analytics.d_payment(payment_method)
);
