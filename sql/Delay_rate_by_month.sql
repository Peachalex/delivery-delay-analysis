select 
  to_char(o.order_purchase_timestamp, 'YYYY-MM') as  month,
  COUNT(*) as delivered_orders,
  round(100 * sum(case when o.order_delivered_customer_date > order_estimated_delivery_date then 1 else 0 END) / count(*),2)as delay_rate
from 
  orders o 
where 
  o.order_status = 'delivered'
and 
  o.order_delivered_customer_date is not null 
group by 
  "month" 
order by 
  "month" ;
 