create view neighborhood_price_count as 
select neighbourhood, ceiling(avg(price)) as avg_price, count(id) as total_listings from chicago
group by neighbourhood
order by ceiling(avg(price)) desc
