
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select payment_date_id
from "classicmodels"."main"."fct_payments"
where payment_date_id is null



  
  
      
    ) dbt_internal_test