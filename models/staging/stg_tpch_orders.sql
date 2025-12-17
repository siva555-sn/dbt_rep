select 
    o_orderkey as orderkey,
    o_custkey as customerkey,
    o_orderstatus as statu,
    o_totalprice as total_price,
    o_orderdate as order_date
 from {{  source("tpch","orders")  }}