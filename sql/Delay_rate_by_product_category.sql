select 
  p.product_category_name,
  COUNT(*) as delivered_orders,
  ROUND(100.0 * SUM(case when o.order_delivered_customer_date > o.order_estimated_delivery_date then 1 else 0 end )/count(*),2) as delay_rate 
from 
  orders o 
join
  order_items oi on o.order_id = oi.order_id 
join
  products p on oi.product_id = p.product_id 
where
  o.order_status = 'delivered'
and
  O.order_delivered_customer_date is not null
group by 
  p.product_category_name
having 
  COUNT(*) > 50
order by 
  delay_rate desc;
