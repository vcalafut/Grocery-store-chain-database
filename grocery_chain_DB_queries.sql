--query to check how many locations are in each city, from most to least
select distinct city, count(city) from location_info
group by city
order by count(city) desc;


--query to see the most recently opened locations info first
select * from location_info
order by date_opened desc;


--query to see how many product types are out of stock at each location 
select cross_street, count('null') from location_info
group by cross_street; 


--check for null pricing errors in the database -- null priced items should have 0 in stock, so this query should return nothing
select product_id, location_id, price, stock from product_location
where price is null and stock > 0;


-----------------------------------
--create a view with useful inventory info for future queries
--drop view inventory_variety
create or replace view inventory_variety AS
select distinct product_info.product_ID, product_info.product_name, product_location.price, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
-----------------------------------


--query to determine the inventory variety at a specific location; search by location_ID (e.g. 1)
select * from inventory_variety
where location_ID = 1 and price is not null;


--query to determine the inventory variety at a specific location; search by location name (e.g. Bloor-Yonge)
select * from inventory_variety
where cross_street = 'Bloor-Yonge' and price is not null;


--repeat the same two queries from above without using the view, to check correctness
select distinct product_info.product_ID, product_info.product_name, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
where product_location.location_ID = 1 and product_location.price is not null;


select distinct product_info.product_ID, product_info.product_name, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
where location_info.cross_street = 'Bloor-Yonge' and product_location.price is not null;











--MAKE VIEW
--in case you want to look at that table with the combined prices (of in stock items) and the full location details
select product_location_ID, product_location.location_ID, cross_street, city, province, date_opened
from product_location
left join location_info on product_location.location_ID = location_info.location_ID;

--MAKE VIEW
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
ALTER TABLE product_location
ADD total dec(5,2)





select total from test



--select * from product_info
--select * from location_info
--select * from product_location

