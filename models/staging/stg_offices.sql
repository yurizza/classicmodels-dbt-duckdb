SELECT
    officeCode AS office_code,
    city,
    phone,
    addressLine1 AS address_line_1,
    country,
    territory
FROM {{ source('raw_data', 'offices') }}
