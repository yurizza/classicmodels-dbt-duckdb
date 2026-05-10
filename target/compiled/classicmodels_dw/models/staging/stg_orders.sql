select
    orderNumber    as order_id,
    orderDate      as order_date,
    requiredDate   as required_date,
    shippedDate    as shipped_date,
    status         as order_status,
    comments       as comments,
    customerNumber as customer_id
from "classicmodels"."main"."orders"