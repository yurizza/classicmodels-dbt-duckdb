SELECT
    productLine AS product_line,
    textDescription AS text_description
FROM {{ source('raw_data', 'productlines') }}
