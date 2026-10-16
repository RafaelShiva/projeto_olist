select
	prod.product_category_name as Categoria,
	COUNT(itm.product_id) as Quantidade_vendida,
	SUM(itm.price) as Faturamento_categoria

from
	olist_order_items as itm
join
	olist_products as prod on itm.product_id = prod.product_id
where
	prod.product_category_name IS NOT NULL
group by
	prod.product_category_name
order by
	faturamento_categoria DESC
limit 5