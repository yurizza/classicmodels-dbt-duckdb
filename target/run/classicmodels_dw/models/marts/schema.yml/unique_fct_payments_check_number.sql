
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    check_number as unique_field,
    count(*) as n_records

from "classicmodels"."main"."fct_payments"
where check_number is not null
group by check_number
having count(*) > 1



  
  
      
    ) dbt_internal_test