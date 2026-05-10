select
    sales_rep_key,
    office_key,
    dd.full_date                                 as month_date,
    dd.year                                      as year,
    dd.month                                     as month,
    count(distinct order_id)                     as order_count,
    count(distinct customer_key)                 as unique_customers,
    sum(quantity_ordered)                        as total_units_sold,
    round(sum(revenue), 2)                       as total_revenue,
    round(sum(gross_profit), 2)                  as total_gross_profit,
    round(avg(revenue), 2)                       as avg_order_line_revenue
from {{ ref('fct_order_lines') }} fol 
left join {{ref('dim_date')}} dd 
    on fol.order_date_id=dd.date_id
-- Orders with no assigned sales rep are excluded (rep-level analysis only).
where sales_rep_key is not null
group by 1, 2, 3, 4, 5
