
  
  create view "classicmodels"."main"."stg_productlines__dbt_tmp" as (
    SELECT
    productLine AS product_line,
    textDescription AS text_description
FROM "classicmodels"."main"."productlines"
  );
