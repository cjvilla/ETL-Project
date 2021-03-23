create table us_data (
	id int primary key,
	neighbourhood text,
	room_type text,
	price int,
	minimum_nights int,
	city text
);

create table chicago_data (
	id int primary key,
	neighbourhood text,
	room_type text,
	price int,
	minimum_nights int,
	city text
);

create table demographics(
	age_bins text,
	country text,
	gender text,
	population_in_thousands int,
	year int
);

-- join tables
create view joined_tables as
select us.id, us.neighbourhood, us.room_type, us.price, us.minimum_nights, us.city
from us_data as us
left join chicago_data as c
on us.id = c.id;

select * from us_data;
select * from avg_price_by_city;
select * from count_by_city;
select * from count_room_and_avg_price;
select * from max_price_by_city; 
select * from demographics;

-- cities with the most airbnbs in desc
create view count_by_city as
select city, count(city) as city_count
from us_data
group by city
order by city_count desc;

-- max price ber city
create view max_price_by_city as
select city, max(price) as max_price
from us_data
group by city
order by max_price desc;

-- avg price per city
create view avg_price_by_city as
select city, cast(avg(price) as decimal(16,2)) as avg_price, cast(avg(minimum_nights) as decimal(16,2)) as minimum_nights
from us_data
group by city
order by avg_price desc;

-- count of room type per city
create view count_room_and_avg_price as
select room_type, count(room_type) as count_per_room_type, cast(avg(price) as decimal(16,2)) as avg_price
from us_data
group by room_type
order by count_per_room_type desc;