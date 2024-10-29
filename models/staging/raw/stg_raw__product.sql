with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        cast(products_id as FLOAT64) as purchase_price,
        purchse_price

    from source

)

select * from renamed
