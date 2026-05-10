
  
  create view "classicmodels"."main"."stg_offices__dbt_tmp" as (
    SELECT
    officeCode AS office_code,
    city,
    phone,
    addressLine1 AS address_line_1,
    country,
    territory
FROM "classicmodels"."main"."offices"
  );
