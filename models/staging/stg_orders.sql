with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as order_customer,
        ordered_at as order_ordered_at,
        store_id as order_store_id
    from source
)
select * from renamed