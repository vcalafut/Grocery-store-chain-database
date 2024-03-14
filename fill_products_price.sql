--define the price for product 1 at various locations
insert into product_price(product_ID, price, location_ID)
values (1, 0.89, 1), (1, 0.89, 2), (1, 0.85, 3), (1, 0.80, 4);

--define the price for product 2 at various locations
insert into product_price(product_ID, price, location_ID)
values (2, 1.09, 1), (2, 0.99, 2), (2, 0.99, 3), (2, 0.90, 4);

--define the price for product 3 at various locations
insert into product_price(product_ID, price, location_ID)
values (3, 4.89, 1), (3, 4.89, 2), (3, 4.89, 3), (3, 4.90, 4);

--define the price for product 4 at various locations  (this one is currently out of stock everywhere in Toronto)
insert into product_price(product_ID, price, location_ID)
values (4, null, 1), (4, null, 2), (4, null, 3), (4, 3.50, 4);

insert into product_price(product_ID, price, location_ID)
values (5, 1.29, 1), (5, 1.29, 2), (5, 1.29, 3), (5, 1.30, 4);

insert into product_price(product_ID, price, location_ID)
values (6, 2.99, 1), (6, 2.99, 2), (6, 2.49, 3), (6, 3.00, 4);

insert into product_price(product_ID, price, location_ID)
values (7, 4.99, 1), (7, 4.50, 2), (7, 4.50, 3), (7, 4.50, 4);

insert into product_price(product_ID, price, location_ID)
values (8, 5.99, 1), (8, 5.99, 2), (8, 5.99, 3), (8, 6.00, 4);

insert into product_price(product_ID, price, location_ID)
values (9, 4.99, 1), (9, 4.99, 2), (9, 4.99, 3), (9, null, 4);

insert into product_price(product_ID, price, location_ID)
values (10, 5.99, 1), (10, 5.99, 2), (10, 5.99, 3), (10, 6.00, 4);

insert into product_price(product_ID, price, location_ID)
values (11, 9.99, 1), (11, 9.99, 2), (11, 9.99, 3), (11, 10.00, 4);
