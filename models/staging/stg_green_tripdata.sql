{{ config(materialized='table') }}

select 
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    rate_code,
    passenger_count,
    trip_distance,
    fare_amount,
    cast(payment_type as numeric) as payment_type
from {{ source('staging', 'greentrips') }}
