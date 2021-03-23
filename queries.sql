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

select us.id, us.neighbourhood, us.room_type, us.price, us.minimum_nights, us.city
from us_data as us
join chicago_data as c
on us.id = c.id;