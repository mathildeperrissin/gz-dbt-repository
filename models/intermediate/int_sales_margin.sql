SELECT *
, round(quantity*purchase_price,2) as purchase_cost
, round((revenue-(quantity*purchase_price)),2) as margin
, {{ margin_percent('revenue','quantity*purchase_price') }} AS margin_percent
FROM {{ ref("stg_raw__sales")}}
    JOIN {{ ref("stg_raw__product")}}
USING (products_id)
