SELECT
    customerNumber AS customer_id,
    customerName AS customer_name,
    contactLastName AS contact_last_name,
    contactFirstName AS contact_first_name,
    phone,
    salesRepEmployeeNumber AS sales_rep_employee_id,
    city,
    country
FROM {{ source('raw_data', 'customers') }}
