{{ config(materialized='view') }}

select * from {{ source('staging', 'ny_taxi') }}
limit 10