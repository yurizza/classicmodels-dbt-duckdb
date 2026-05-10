SELECT
    productCode AS product_code,
    productName AS product_name,
    productLine AS product_line,
    productScale AS product_scale,
    productVendor AS product_vendor,
    quantityInStock AS quantity_in_stock,
    buyPrice AS buy_price,
    MSRP AS msrp
FROM {{ source('raw_data', 'products') }}
