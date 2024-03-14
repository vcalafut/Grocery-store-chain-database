--select * from product_info
--select * from location_info
--select * from product_location

-----------------------------------queries about the chain location details
--Q1. query to see the most recently opened locations' info first
select * from location_info
order by date_opened desc;


--Q2. query to check how many locations are currently in each city, from most to least
select distinct city, count(city) from location_info
group by city
order by count(city) desc;

-------------------------------------queries about inventory
--Q3. query to check for null pricing errors in the database -- null priced items should have 0 in stock, so this query should return nothing
select product_id, location_id, price, stock from product_location
where price is null and stock > 0;


--V1. create a view with useful inventory info for future queries
create or replace view inventory_variety as
select distinct product_info.product_ID, product_info.product_name, product_location.price, product_location.stock, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
--select * from inventory_variety;


--Q4A. query to determine the inventory variety at a specific location; search by location_ID (e.g. 1)
select * from inventory_variety
where location_ID = 1 and price is not null;


--Q5A. query to determine the inventory variety (which products names are in stock) at a specific location; search by location name (e.g. Bloor-Yonge)
select * from inventory_variety
where cross_street = 'Bloor-Yonge' and price is not null;


--Q4B. repeat the same two queries from above without using the view, to check correctness
select distinct product_info.product_ID, product_info.product_name, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
where product_location.location_ID = 1 and product_location.price is not null;


--Q5B. repeat the same two queries from above without using the view, to check correctness
select distinct product_info.product_ID, product_info.product_name, product_location.location_ID, location_info.cross_street
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
where location_info.cross_street = 'Bloor-Yonge' and product_location.price is not null;


--Q6. query to see how many product types are OUT of stock at each location
select cross_street, count('null') from location_info
group by cross_street; 


--Q7. query to find the quantity of items thare are IN stock in each store
select count(stock), cross_street from product_and_location_details
group by cross_street
order by count(stock);


--Q8. query to check the location with the average prices across all in stock products
select location_info.cross_street, avg(price) from product_location
left join location_info on product_location.location_ID = location_info.location_ID
group by location_info.cross_street;


--Q9. query to find worth of all the products in the inventory in each store
select sum(price*stock), cross_street from product_and_location_details
group by cross_street
order by sum(price*stock) desc;


--V2. to look at/use commonly useful product info and location info together
create or replace view product_and_location_details as
select distinct product_info.product_ID, product_info.product_name, product_location.price, product_location.stock, product_location.location_ID, location_info.cross_street, location_info.city, location_info.date_opened
from product_location
left join product_info on product_location.product_ID = product_info.product_ID
left join location_info on product_location.location_ID = location_info.location_ID
--select * from product_and_location_details;


