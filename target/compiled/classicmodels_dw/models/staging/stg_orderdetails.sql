select
    orderNumber      as order_id,
    productCode      as product_code,
    quantityOrdered  as quantity_ordered,
    priceEach        as price_each,
    orderLineNumber  as order_line_number
from "classicmodels"."main"."orderdetails"