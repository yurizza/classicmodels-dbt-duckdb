select
    row_number() over (order by p.product_code)   as product_key,
    p.product_code,
    p.product_name,
    p.product_line,
    pl.text_description                           as product_line_description,
    p.product_scale,
    p.product_vendor,
    p.buy_price,
    p.msrp
from "classicmodels"."main"."stg_products" p
left join "classicmodels"."main"."stg_productlines" pl
    on p.product_line = pl.product_line