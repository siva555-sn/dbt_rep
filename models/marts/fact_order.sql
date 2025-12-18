select 
    orders.*,
    item_summary.gross_item_amount,
    item_summary.item_discount_amount
from 
    {{ref("stg_tpch_orders")}} as orders 
join 
    {{ref("int_order_item_summary")}} as item_summary  
        on orders.orderkey = item_summary.orderkey   
order by orders.order_date