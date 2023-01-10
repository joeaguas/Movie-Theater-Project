-- _mp will be used as the post script on all the table names 
-- stands for movie project

-- STAFF TABLE CREATION
create table staff_mp(
	staff_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	manager_status BOOL
);

-- MOVIES TABLE CREATION 
create table movies_mp(
	movie_id SERIAL primary key,
	title VARCHAR(150),
	rating VARCHAR(10),
	language_ VARCHAR(20),
	length_min INTEGER
);

-- CUSTOMER TABLE CREATION  
create table customer_mp(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	birthday DATE,
	ticket_pass BOOL
);

-- CONCESSION MENU TABLE CREATION
create table concession_menu_mp(
	prod_id SERIAL primary key,
	prod_name VARCHAR(100),
	prod_type VARCHAR(50),
	seasonal BOOL,
	prod_price NUMERIC(6,2)
);

-- THEATER SCHEDULE TABLE CREATION 
create table theater_schedule_mp(
	sched_date_id SERIAL primary key,
	showing_date DATE,
	theater_1_movie INTEGER,
	theater_1_staff INTEGER,
	theater_2_movie INTEGER,
	theater_2_staff INTEGER,
	theater_3_movie INTEGER,
	theater_3_staff INTEGER,
	theater_4_movie INTEGER,
	theater_4_staff INTEGER,
	foreign key(theater_1_movie) references movies_mp(movie_id),
	foreign key(theater_1_staff) references staff_mp(staff_id),
	foreign key(theater_2_movie) references movies_mp(movie_id),
	foreign key(theater_2_staff) references staff_mp(staff_id),
	foreign key(theater_3_movie) references movies_mp(movie_id),
	foreign key(theater_3_staff) references staff_mp(staff_id),
	foreign key(theater_4_movie) references movies_mp(movie_id),
	foreign key(theater_4_staff) references staff_mp(staff_id)
);

-- TICKETS TABLE CREATION  
create table tickets_mp(
	ticket_id SERIAL primary key,
	ticket_date DATE,
	movie_id INTEGER,
	customer_id INTEGER,
	foreign key(movie_id) references movies_mp(movie_id),
	foreign key(customer_id) references customer_mp(customer_id)
);

-- CONCESSION TRANSACTIONS TABLE CREATION  
create table con_transactions_mp(
	transaction_id SERIAL primary key,
	subtotal NUMERIC(6,2),
	total NUMERIC(8,2),
	customer_id INTEGER,
	concession_id INTEGER,
	staff_id INTEGER,
	foreign key(customer_id) references customer_mp(customer_id),
	foreign key(staff_id) references staff_mp(staff_id),
	foreign key(concession_id) references concession_menu_mp(prod_id)
);

