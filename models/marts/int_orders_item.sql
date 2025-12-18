select
   
   line_item.order_item_key,
   line_item.partkey,
   line_item.linenumber,
   orders.orderkey,
   orders.order_date,
   orders.customerkey,
   {{discounted_price('line_item.extendedprice','line_item.discount')}} as discounted_price

  from
  {{ref("stg_tpch_orders")}} as orders 
  join 
   {{ref("stg_tchp_line_items")}} as line_item 
   on orders.orderkey= line_item.orderkey
order by orders.order_date