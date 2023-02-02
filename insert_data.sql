-- Inserting Data into customer table
insert into customer(customer_id, first_name, last_name, member, email)
values (1, 'austin', 'beveridge', True, 'codenoob@coders.com');

insert into customer(customer_id, first_name, last_name, member, email)
values (2, 'kurtis', 'beveridge', False, 'goldenretriever@dogs.com');

insert into customer(customer_id, first_name, last_name, member, email)
values (3, 'olive', 'beveridge', True, 'poodle@dogs.com');


-- Inserting Data into tickets table
insert into tickets(ticket_id, customer_id, movie_id, payment_id)
values ( 1, 1, 20, 1);

insert into tickets(ticket_id, customer_id, movie_id, payment_id)
values ( 3, 3, 5, 3);

insert into tickets(ticket_id, customer_id, movie_id, payment_id)
values ( 2, 2, 5, 2);

select * from payment


-- Inserting Data into payment table
-- added ticket_id later
insert into payment(payment_id, customer_id)
values (1, 1);

insert into payment(payment_id, customer_id)
values (2, 2);

insert into payment(payment_id, customer_id)
values (3, 3);


-- Inserting Data into movie table
INSERT INTO movie(movie_id, title, description, duration_min, theater, ticket_id)
VALUES (20, 'The Boondock Saints', 'Two irish brothers get revenge!', INTERVAL '00:01:55' HOUR TO MINUTE, 5, 1);

INSERT INTO movie(movie_id, title, description, duration_min, theater, ticket_id)
VALUES (5, 'Dumb and Dumber', 'Two friends try to return a suitcase, but find something special inside that changes everything.', INTERVAL '00:01:30' HOUR TO MINUTE, 4, 2);

INSERT INTO movie(movie_id, title, description, duration_min, theater, ticket_id)
VALUES (15, 'The Ring', 'Anyone who watches the film dies in 7 days (spooky)', INTERVAL '00:02:30' HOUR TO MINUTE, 3);

-- Inserting data iinto concessions
INSERT INTO concessions( concessions_id, price, quantity, payment_id, customer_id)
VALUES (1, 6.99, 1, 1, 1);

INSERT INTO concessions(concessions_id, price, quantity, payment_id, customer_id)
VALUES (2, 5.99, 1, 2, 2);

INSERT INTO concessions( concessions_id, price, quantity, payment_id, customer_id)
VALUES (3, 9.99, 2, 2, 2);

select * from customer

select * from payment

select * from tickets

select * from concessions

select * from movie
