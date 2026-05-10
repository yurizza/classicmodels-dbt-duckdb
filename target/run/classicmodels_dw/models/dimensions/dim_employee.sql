
  
    
    

    create  table
      "classicmodels"."main"."dim_employee__dbt_tmp"
  
    as (
      select
    row_number() over (order by e.employee_id) as employee_key,
    e.employee_id,
    e.first_name,
    e.last_name,
    e.first_name || ' ' || e.last_name as full_name,
    e.job_title,
    e.email,
    e.office_code,
    e.reports_to_employee_id,
    mgr.first_name || ' ' || mgr.last_name as manager_full_name
from "classicmodels"."main"."stg_employees" e
left join "classicmodels"."main"."stg_employees" mgr
    on e.reports_to_employee_id = mgr.employee_id
    );
  
  