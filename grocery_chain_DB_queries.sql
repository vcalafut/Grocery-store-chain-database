select * from product_info
select * from location_info
select * from product_location


--query to check how many locations are in each city, from highest to lowest
select distinct city, count(city) from location_info
group by city
order by count(city) desc;

--query to see the most recently opened locations info first
select * from location_info
order by date_opened desc;

--query to see how many product types are out of stock at each location 
select cross_street, count('null') from location_info
group by cross_street; 

--check for stock errors where null and 0 






--query to determine the inventory variety at a specific location; search by location_ID (e.g. 1)
select distinct product_info.product_ID, product_info.product_name, product_price.location_ID, location_info.cross_street
from product_price
left join product_info on product_price.product_ID = product_info.product_ID
left join location_info on product_price.location_ID = location_info.location_ID
where product_price.location_ID = 1 and product_price.price is not null;

--query to determine the inventory variety at a specific location; search by location name (e.g. Bloor-Yonge)
select distinct product_info.product_ID, product_info.product_name, product_price.location_ID, location_info.cross_street
from product_price
left join product_info on product_price.product_ID = product_info.product_ID
left join location_info on product_price.location_ID = location_info.location_ID
where location_info.cross_street = 'Bloor-Yonge' and product_price.price is not null;

--in case you want to look at that table with the combined prices (of in stock items) and the full location details
select product_location_ID, product_location.location_ID, cross_street, city, province, date_opened
from product_location
left join location_info on product_location.location_ID = location_info.location_ID;

--in case you want to see all the details at once (product info and location info together)
select * from product_info
full join product_location on product_info.product_ID = product_location.product_ID
full join location_info on product_location.location_ID = location_info.location_ID;

--query to check the location with the lowest average prices across all in stock products

--query to check the location with the highest average prices across all in stock products
select location_info.cross_street, avg(price) from product_location
left join location_info on product_location.location_ID = location_info.location_ID
group by location_info.cross_street;



--find worth of all the products in the inventory in each store
--
CREATE VIEW test AS
SELECT product_ID
FROM product_info
WHERE product_ID>5;


