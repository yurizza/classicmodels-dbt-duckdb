SELECT
    row_number() over (order by customer_id) as customer_key,
    customer_id,
    customer_name,
    contact_first_name || ' ' || contact_last_name AS full_contact_name,
    phone,
    sales_rep_employee_id,
    city,
    country
FROM "classicmodels"."main"."stg_customers"