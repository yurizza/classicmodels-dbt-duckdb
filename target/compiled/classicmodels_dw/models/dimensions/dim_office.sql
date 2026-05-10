SELECT
    row_number() over (order by office_code) as office_key,
    office_code,
    city,
    phone,
    address_line_1,
    country,
    territory
FROM "classicmodels"."main"."stg_offices"