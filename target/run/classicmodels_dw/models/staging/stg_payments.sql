
  
  create view "classicmodels"."main"."stg_payments__dbt_tmp" as (
    SELECT
    customerNumber AS customer_id,
    checkNumber AS check_number,
    paymentDate AS payment_date,
    amount
FROM "classicmodels"."main"."payments"
  );
