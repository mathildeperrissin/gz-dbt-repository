SELECT
DATE_TRUNC(date_date, MONTH) as date_month
, round(SUM(ads_margin),2) as ads_margin
, round(avg(average_basket),2) as average_basket
, round(sum(operational_margin),2) as operational_margin
, round(sum(ads_cost),2) as ads_cost
, round(sum(ads_impressions),2) as ads_impression
, round(sum(ads_clicks),2) as ads_clicks
, round(sum(quantity),2) as quantity
, round(sum(revenue),2) as revenue
, round(sum(purchase_cost),2) as purchase_cost
, round(sum(margin),2) as margin
, round(sum(shipping_fee),2) as shipping_fee
, round(sum(logcost),2) as logcost
, round(sum(ship_cost),2) as ship_cost
FROM {{ ref("finance_campaigns_day")}}
GROUP BY (DATE_TRUNC(date_date, MONTH))