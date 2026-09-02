select 
  c.customer_state as state,
  count(*) as total_delivered_orders,
  sum(case
  	when o.order_delivered_customer_date > o.order_estimated_delivery_date
  	then 1 else 0
  end
  )as delayed_orders,
  round(100 * SUM(case when o.order_delivered_customer_date > order_estimated_delivery_date then 1 else 0 END)/COUNT(*),2) as delayed_rate_pct  
from 
  orders o
join
  customers c 
on 
  o.customer_id  = c.customer_id 
where 
  o.order_status = 'delivered'
and
  o.order_delivered_customer_date is not null
group by 
  c.customer_state 
order by
  delayed_rate_pct 