--record the item price, number in stock, date of this update for product 1 at various locations
insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (1, 0.89, 204, '2024-03-01', 1), (1, 0.89, 223, '2024-03-02', 2), (1, 0.85, 194, '2024-03-01',3), (1, 0.80, 170, '2024-02-28', 4);

--record for each of the remaining products at each location
insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (2, 1.09, 221, '2024-03-01', 1), (2, 0.99, 249, '2024-03-02', 2), (2, 0.99, 293, '2024-03-01', 3), (2, 0.90, 158, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (3, 4.89, 106, '2024-03-01', 1), (3, 4.89, 113, '2024-03-01', 2), (3, 4.89, 104, '2024-03-01',3), (3, 4.90, 59, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (4, null, 0, '2024-03-12',  1), (4, null, 0, '2024-03-12', 2), (4, null, 0, '2024-03-012', 3), (4, 3.50, 24, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (5, 1.29, 60, '2024-03-1', 1), (5, 1.29, 54, '2024-03-1', 2), (5, 1.29, 89, '2024-03-1', 3), (5, 1.30, 34, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (6, 2.99, 44, '2024-03-01', 1), (6, 2.99, 42, '2024-03-01', 2), (6, 2.49, 56, '2024-03-01', 3), (6, 3.00, 29, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (7, 4.99, 34, '2024-03-01', 1), (7, 4.50, 36, '2024-03-01', 2), (7, 4.50, 41, '2024-03-01', 3), (7, 4.50, 21, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (8, 5.99, 55, '2024-03-01', 1), (8, 5.99, 52, '2024-03-01', 2), (8, 5.99, 39, '2024-03-01', 3), (8, 6.00, 34, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (9, 4.99, 45, '2024-03-01', 1), (9, 4.99, 31, '2024-03-01', 2), (9, 4.99, 47, '2024-03-01', 3), (9, null, 0, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (10, 5.99, 44, '2024-03-01', 1), (10, 5.99, 24, '2024-03-01', 2), (10, 5.99, 36, '2024-03-01', 3), (10, 6.00, 109, '2024-02-28', 4);

insert into product_location(product_ID, price, stock, date_recorded, location_ID)
values (11, 9.99, 58, '2024-03-01', 1), (11, 9.99, 27, '2024-03-01', 2), (11, 9.99, 31, '2024-03-01', 3), (11, 10.00, 25, '2024-02-28', 4);