-- _cd will be used as the post script on all the table names 
-- stands for car dealership

-- SALESPERSON TABLE CREATION
create table salespeople_cd(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	manager_status BOOL
);

-- MECHANIC TABLE CREATION
create table mechanics_cd(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	manager_status BOOL
);

-- CUSTOMERS TABLE CREATION 
create table customers_cd(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number INTEGER,
	email VARCHAR(150)
);

-- CAR INVENTORY TABLE CREATION 
create table car_inventory_cd(
	serial_number SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(50),
	model_year INTEGER,
	odometer INTEGER,
	preown_status BOOL,
	listed_price NUMERIC(8,2)
);

-- INVOICE HISTORY TABLE CREATION  
create table invoice_history_cd(
	invoice_id SERIAL primary key,
	sale_date DATE,
	car_serial_number INTEGER,
	customer_id INTEGER,
	salesperson_id INTEGER,
	selling_price numeric(10,2),
	foreign key(car_serial_number) references car_inventory_cd(serial_number),
	foreign key(customer_id) references customers_cd(customer_id),
	foreign key(salesperson_id) references salespeople_cd(salesperson_id)
);

-- TICKET HISTORY TABLE CREATION  
create table ticket_history_cd(
	ticket_id SERIAL primary key,
	ticket_date DATE,
	car_serial_number INTEGER,
	customer_id INTEGER,
	mechanic_id INTEGER,
	total_cost numeric(10,2),
	ticket_notes VARCHAR(400),
	foreign key(car_serial_number) references car_inventory_cd(serial_number),
	foreign key(customer_id) references customers_cd(customer_id),
	foreign key(mechanic_id) references mechanics_cd(mechanic_id)
);


-- Drop Statements to run after
drop table salespeople_cd;
drop table mechanics_cd;
drop table customers_cd;
drop table car_inventory_cd;
drop table invoice_history_cd;
drop table ticket_history_cd;