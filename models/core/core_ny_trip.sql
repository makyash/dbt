{{ config(materialized = 'table' )}}

Select 
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    rate_code,
    passenger_count,
    trip_distance,
    fare_amount,
    payment_type,
    {{ get_payment_type_description('payment_type') }} as description
from {{ source('core', 'stg_green_tripdata') }}