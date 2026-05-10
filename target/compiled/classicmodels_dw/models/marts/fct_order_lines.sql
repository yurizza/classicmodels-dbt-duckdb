select
    od.order_id,
    od.order_line_number,
    o.order_date                           as order_date_id,
    dc.customer_key,
    dp.product_key,
    de.employee_key                        as sales_rep_key,
    dof.office_key,
    od.quantity_ordered,
    od.price_each,
    round(od.quantity_ordered * od.price_each, 2) as revenue,
    dp.buy_price,
    round(od.quantity_ordered * dp.buy_price, 2) as cost,
    round(
        (od.quantity_ordered * od.price_each)
      - (od.quantity_ordered * dp.buy_price), 2
    ) as gross_profit
from "classicmodels"."main"."stg_orderdetails" od
join "classicmodels"."main"."stg_orders" o
    on od.order_id = o.order_id
join "classicmodels"."main"."dim_customer" dc
    on o.customer_id = dc.customer_id
join "classicmodels"."main"."dim_product" dp
    on od.product_code = dp.product_code
left join "classicmodels"."main"."dim_employee" de
    on dc.sales_rep_employee_id = de.employee_id
left join "classicmodels"."main"."dim_office" dof
    on de.office_code = dof.office_code