
  
  create view "classicmodels"."main"."stg_employees__dbt_tmp" as (
    SELECT
    employeeNumber AS employee_id,
    lastName AS last_name,
    firstName AS first_name,
    extension,
    email,
    officeCode AS office_code,
    reportsTo AS reports_to_employee_id,
    jobTitle AS job_title
FROM "classicmodels"."main"."employees"
  );
