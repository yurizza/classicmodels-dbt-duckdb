
    
    

select
    check_number as unique_field,
    count(*) as n_records

from "classicmodels"."main"."fct_payments"
where check_number is not null
group by check_number
having count(*) > 1


