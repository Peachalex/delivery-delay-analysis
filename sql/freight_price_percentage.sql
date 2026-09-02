select 
  p.product_category_name as category,
  AVG(oi.price) as average_price,
  AVG(oi.freight_value) as average_freight_value,
  AVG(oi.freight_value / nullif(oi.price,0)) as average_freight_portion,
  SUM(oi.freight_value)/ nullif(SUM(oi.price),0) as overall_freight_portion,
  count(*)as item_count
from
  order_items oi 
join
  products p
on 
  oi.product_id = p.product_id 
group by 
  p.product_category_name
having
  count(*) > 50
order by
  average_freight_portion desc