-- depends_on: "classicmodels"."main"."dim_date"
select
    p.check_number,
    p.payment_date as payment_date_id,
    dc.customer_key,
    p.amount
from "classicmodels"."main"."stg_payments" p
join "classicmodels"."main"."dim_customer" dc
    on p.customer_id = dc.customer_id