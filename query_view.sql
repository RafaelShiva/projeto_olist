CREATE OR REPLACE VIEW view_resume_vendas as
SELECT
	od.order_id,
	od.order_status,
	od.order_purchase_timestamp as data_venda,
	cus.customer_id,
	cus.customer_state as estado_cliente,
	prod.product_category_name as categoria_produto,
	itm.price as valor_produto,
	itm.freight_value as valor_frente,
	(itm.price + itm.freight_value) as valor_total_pedido


FROM
	olist_orders as od
JOIN
	olist_order_items as itm on od.order_id = itm.order_id
JOIN
	olist_customers as cus on od.customer_id = cus.customer_id
JOIN
	olist_products as prod on itm.product_id = prod.product_id
	