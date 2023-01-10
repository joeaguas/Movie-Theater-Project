-- Staff Data
insert into staff_mp(
	staff_id,
	first_name,
	last_name,
	manager_status
)VALUES(
	1,
	'James',
	'Mongo',
	TRUE
);
insert into staff_mp 
values(2, 'Casey', 'Martin', FALSE);
insert into staff_mp 
VALUES(3, 'Joe', 'Fresca', FALSE);
insert into staff_mp
VALUES(4, 'Matt', 'Vadon', FALSE);

-- Movies Data
insert into movies_mp(
	movie_id,
	title,
	rating,
	language_,
	length_min
)VALUES(
	1,
	'Rush Hour',
	'PG-13',
	'English',
	98
);
insert into movies_mp 
VALUES(2, 'Rush Hour 2', 'PG-13', 'English', 90);
insert into movies_mp 
values(3, 'Rush Hour 3', 'PG-13', 'English', 91);
insert into movies_mp 
values(4, 'Shaolin Soccer', 'PG', 'Mandarin', 87);

select * from movies_mp;

-- Customers Data
insert into customer_mp(
	customer_id,
	first_name,
	last_name,
	birthday,
	ticket_pass
)VALUES(
	1,
	'Oliver',
	'Jones',
	'2000-03-14',
	TRUE
);
insert into customer_mp
VALUES(2, 'McKay', 'Thune', '2002-05-24', FALSE);
insert into customer_mp
VALUES(3, 'Carl', 'Clark', '1978-07-04', TRUE);
insert into customer_mp
VALUES(4, 'Mikey', 'Rake', '1961-02-12', FALSE);
select * from customer_mp;

-- Concession Menu Data
insert into concession_menu_mp(
	prod_id,
	prod_name,
	prod_type,
	seasonal,
	prod_price
)VALUES(
	1,
	'Popcorn',
	'Food',
	false,
	6.99
);
insert into concession_menu_mp
VALUES( 2, 'Diet Coke', 'Beverage', false, 2.99);
insert into concession_menu_mp
VALUES( 3, 'Crunch', 'Candy', false, 4.99);
insert into concession_menu_mp
VALUES( 4, 'Peppermint Popcorn', 'Food', true, 7.99);
select * from concession_menu_mp;

-- Theater Schedule Data
insert into theater_schedule_mp(
	sched_date_id,
	theater_1_movie,
	theater_1_staff,
	theater_2_movie,
	theater_2_staff,
	theater_3_movie,
	theater_3_staff,
	theater_4_movie,
	theater_4_staff
)VALUES(
	1,
	1,
	1,
	2,
	2,
	3,
	3,
	4,
	4
);
insert into theater_schedule_mp(sched_date_id, theater_1_movie, theater_1_staff, theater_2_movie, theater_2_staff,
	theater_3_movie, theater_3_staff, theater_4_movie, theater_4_staff)
VALUES(2,2,4,3,1,4,2,1,3);
insert into theater_schedule_mp(sched_date_id, theater_1_movie, theater_1_staff, theater_2_movie, theater_2_staff,
	theater_3_movie, theater_3_staff, theater_4_movie, theater_4_staff)
VALUES(3,4,3,1,2,2,1,3,4);
select * from theater_schedule_mp;

-- Tickets Data
insert into tickets_mp(
	ticket_id,
	ticket_date,
	movie_id,
	customer_id
)VALUES(
	1,
	'2022-12-07',
	2,
	3
);
insert into tickets_mp 
VALUES( 2, '2022-12-07', 3, 4);
insert into tickets_mp 
VALUES( 3, '2022-12-08', 1, 2);
insert into tickets_mp 
VALUES( 4, '2022-12-08', 4, 1);
select * from tickets_mp;

-- Concession Transactions Data
insert into con_transactions_mp(
	transaction_id,
	subtotal,
	total,
	customer_id,
	concession_id,
	staff_id
)VALUES(
	1,
	6.99,
	7.28,
	1,
	1,
	2
);
insert into con_transactions_mp
VALUES(2, 4.99, 5.28, 3, 3, 4);
insert into con_transactions_mp
VALUES(3, 6.99, 7.28, 2, 1, 3);
insert into con_transactions_mp
VALUES(4, 2.99, 3.28, 2, 2, 3);
select * from con_transactions_mp;