-- SALESPERSON DATA
insert into salespeople_cd(
	salesperson_id,
	first_name,
	last_name,
	manager_status
)VALUES(
	1,
	'Oliver',
	'Thorton',
	TRUE
);
insert into salespeople_cd 
values(2, 'Jose', 'Leos', FALSE);
insert into salespeople_cd 
VALUES(3, 'Martin', 'Thune', FALSE);
insert into salespeople_cd
VALUES(4, 'Taylor', 'Marshall', FALSE);

select * from salespeople_cd;

-- MECHANICS DATA
insert into mechanics_cd(
	mechanic_id,
	first_name,
	last_name,
	manager_status
)VALUES(
	1,
	'James',
	'Morton',
	TRUE
);
insert into mechanics_cd 
values(2, 'Alex', 'Heron', FALSE);
insert into mechanics_cd 
VALUES(3, 'Tim', 'Khole', FALSE);
insert into mechanics_cd
VALUES(4, 'Joe', 'Walter', FALSE);

select * from mechanics_cd;

-- CUSTOMERS DATA
insert into customers_cd(
	customer_id,
	first_name,
	last_name,
	phone_number,
	email
)VALUES(
	1,
	'Roger',
	'Wolf',
	4567890,
	'arealemail@email.com'
);
insert into customers_cd 
values(2, 'Scott', 'Love', 5678901, 'anotheremail@email.com');
insert into customers_cd 
VALUES(3, 'Michael', 'Don', 6789012, 'ipromiseitsreal@email.com');
insert into customers_cd
VALUES(4, 'Paul', 'Doddy', 7890123, 'sendmail@email.com');

select * from customers_cd;

-- CAR INVENTORY DATA 
insert into car_inventory_cd(
	serial_number,
	make,
	model,
	model_year,
	odometer,
	preown_status,
	listed_price
)VALUES(
	1,
	'Toyota',
	'4Runner',
	2012,
	12890,
	true,
	36000.00
);
insert into car_inventory_cd 
values(2, 'Honda', 'CRV', 2022, 80, false, 40000.00);
insert into car_inventory_cd  
VALUES(3, 'Lexus', 'IDK', 2019, 3412, true, 29345.12);
insert into car_inventory_cd 
VALUES(4, 'Toyota', 'Prius', 2022, 4, false, 33000.00);

select * from car_inventory_cd;

-- INVOICE HISTORY DATA  
insert into invoice_history_cd(
	invoice_id,
	sale_date,
	car_serial_number,
	customer_id,
	salesperson_id,
	selling_price
)VALUES(
	1,
	'2022-12-07',
	3,
	2,
	1,
	36000.00
);
insert into invoice_history_cd 
values(2, '2022-12-07', 4, 2, 2, 42000.00);
insert into invoice_history_cd 
VALUES(3, '2022-12-08', 2, 1, 3, 29345.12);
insert into invoice_history_cd
VALUES(4, '2022-12-08', 1, 1, 4, 33000.00);

select * from invoice_history_cd;

-- TICKET HISTORY TABLE CREATION  
insert into ticket_history_cd(
	ticket_id,
	ticket_date,
	car_serial_number,
	customer_id,
	mechanic_id,
	total_cost,
	ticket_notes
)VALUES(
	1,
	'2022-12-10',
	3,
	2,
	2,
	300.00,
	'None'
);
insert into ticket_history_cd 
values(2, '2022-12-11', 1, 1, 3, 400.00, 'Warranty on brake pads');

select * from ticket_history_cd;



