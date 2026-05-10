
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select check_number
from "classicmodels"."main"."fct_payments"
where check_number is null



  
  
      
    ) dbt_internal_test