-- Movie theater

-- Create customer table
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	member BOOLEAN,
	email VARCHAR(150)
);

-- create payment table
create table payment (
	payment_id SERIAL primary key,
	customer_id Integer,
	ticket_id Integer
);

-- alter table payment to accept foreign keys (after creating the other tables)
alter table payment
add constraint customer_id foreign key (customer_id) references customer(customer_id),
add constraint ticket_id foreign key (ticket_id) references tickets(ticket_id);

--create table tickets
create table tickets (
	ticket_id SERIAL primary key,
	customer_id Integer,
	movie_id Integer,
	payment_id Integer
	);

-- alter table tickets to accept foreign keys (after creating other tables)
alter table tickets
add constraint customer_id foreign key (customer_id) references customer(customer_id),
add constraint movie_id foreign key (movie_id) references movie(movie_id),
add constraint payment_id foreign key (payment_id) references payment(payment_id);

-- create table movie 
create table movie (
	movie_id SERIAL primary key,
	title VARCHAR(150),
	description text,
	duration_min time,
	theater VARCHAR,
	ticket_id Integer
);

-- alter table move to accept foreign keys
alter table movie
add constraint ticket_id foreign key (ticket_id) references tickets(ticket_id);

-- create table concessions
create table concessions (
	concessions_id SERIAL primary key,
	price NUMERIC(5,2),
	quantity Integer
);

-- add columns that I missed
alter table concessions 
add column payment_id Integer,
add column customer_id Integer;


-- add foreign keys. I could have done this in the original code but I created the table too early.
alter table concessions
add constraint payment_id foreign key (payment_id) references payment(payment_id),
add constraint customer_id foreign key (customer_id) references customer(customer_id);

select * from concessions
