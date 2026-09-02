select 
  count(*) as total_delivered_orders,
  SUM(case
  	when o.order_delivered_customer_date > o.order_estimated_delivery_date
  	then 1 else 0
  end
  ) as delayed_orders,
  round(
    100.0 * SUM(case 
    when o.order_delivered_customer_date > o.order_estimated_delivery_date 
    then 1 else 0
    end)/COUNT(*),2
  )as delay_rate
from
  orders o 
where
    o.order_status = 'delivered'
and  o.order_estimated_delivery_date is not null;

  
  