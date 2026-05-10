-- depends_on: {{ ref('dim_date') }}
select
    p.check_number,
    p.payment_date as payment_date_id,
    dc.customer_key,
    p.amount
from {{ ref('stg_payments') }} p
join {{ ref('dim_customer') }} dc
    on p.customer_id = dc.customer_id
