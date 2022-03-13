{{
  config(
    materialized='table'
  )
}}

SELECT 
    order_id AS order_id,
    product_id,
    quantity
FROM {{ source('tutorial', 'order_items') }}