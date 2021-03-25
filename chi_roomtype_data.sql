create view chi_roomtype_data as 
select room_type, ceiling(avg(price)) as avg_price, count(id) as total_listings from chicago
group by room_type
order by ceiling(avg(price)) desc