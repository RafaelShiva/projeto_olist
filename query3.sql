SELECT
	cus.customer_state as estado,
	count(DISTINCT odr.order_id) as total_pedidos,
	sum(itm.price) as faturamento_por_estado,
	round(avg(itm.price)) as ticket_medio_por_estado

FROM
	olist_customers as cus
JOIN
	olist_orders as odr on cus.customer_id = odr.customer_id
JOIN
	olist_order_items itm on odr.order_id = itm.order_id
GROUP BY
	cus.customer_state
ORDER BY
	faturamento_por_estado DESC