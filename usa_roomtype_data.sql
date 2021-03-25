create view usa_roomtype_data as 
select room_type, ceiling(avg(price)) as avg_price, count(id) as total_listings from usa
group by room_type
order by ceiling(avg(price)) desc