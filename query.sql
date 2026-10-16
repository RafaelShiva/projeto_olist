select
	count(DISTINCT order_id) as total_pedidos,
	sum(price) as faturamento_total,
	round(AVG(price)) as ticket_medio
from
	olist_order_items