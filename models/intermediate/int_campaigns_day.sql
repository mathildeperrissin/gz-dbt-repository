SELECT
date_date
, ROUND(SUM(ads_cost),2) ads_cost
, SUM (impression) as ads_impressions
, SUM (click) as ads_clicks
FROM {{ ref("int_campaigns")}}
Group by date_date
order by date_date desc