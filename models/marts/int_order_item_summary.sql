select 
    orderkey,
    sum(extendedprice) as gross_item_amount,
    sum(discounted_price) as item_discount_amount
from {{ref("int_orders_item")}}

group by orderkey