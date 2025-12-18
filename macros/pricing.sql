{% macro discounted_price (extendedprice,discount,scale=2)%}
   (-1* {{extendedprice}}* {{discount}})::decimal(16,{{scale}})
{% endmacro %}