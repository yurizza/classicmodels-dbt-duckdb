
    
    

with child as (
    select payment_date_id as from_field
    from "classicmodels"."main"."fct_payments"
    where payment_date_id is not null
),

parent as (
    select date_id as to_field
    from "classicmodels"."main"."dim_date"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


