--create an empty table to hold the details that are instrinic to each product that is found in any of the stores
CREATE TABLE product_info (
    product_ID         serial primary key,
    product_name       varchar,
    product_dept       varchar
);

--create an empty table to hold the ID, location details, and opening date of each of the stores
CREATE TABLE location_info (
    location_ID	       serial primary key,
    cross_street       varchar,
    city               varchar,
    province           varchar,
    date_opened        date
);

--create an empty table to hold the item information that varies per store location, linked by the ID numbers of the products and locations
CREATE TABLE product_location (
    product_location_ID serial primary key,
    product_ID          integer references product_info(product_ID),
    price               decimal(5,2),   
    stock		integer,
    date_recorded	date,
    location_ID         integer references location_info(location_ID)
);


--drop table product_price;
--drop table location_info;
--drop table product_info;
