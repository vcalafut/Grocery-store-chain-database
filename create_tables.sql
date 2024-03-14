drop table product_price;
drop table location_info;
drop cascade table product_info;

CREATE TABLE product_info (
    product_ID         serial primary key,
    product_name       varchar,
	product_dept	   varchar
);

CREATE TABLE location_info (
    location_ID		   serial primary key,
	cross_street       varchar,
    city               varchar,
    province           varchar,
    date_opened        date
);

--where NULL price means the product is not sold at that location
CREATE TABLE product_location (
	product_location_ID serial primary key,
    product_ID         integer references product_info(product_ID),
    price              decimal(5,2),   
	stock			   integer,
	date_recorded	 date,
	location_ID        integer references location_info(location_ID)
);








