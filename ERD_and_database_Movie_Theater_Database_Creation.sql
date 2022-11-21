CREATE TABLE theater (
	theater_id SERIAL PRIMARY KEY,
	theater_name VARCHAR(150),
	location VARCHAR(150)
);


CREATE TABLE employee(
	emp_id SERIAL PRIMARY KEY,
	emp_firstname VARCHAR(150),
	emp_lastname VARCHAR(150),
	emp_phone VARCHAR(15),
	emp_email VARCHAR(150),
	emp_address VARCHAR(250)
);

CREATE TABLE concessions(
	cons_id SERIAL PRIMARY KEY,
	cons_name VARCHAR(150),
	cons_type VARCHAR(150),
	cons_price DECIMAL(4,2)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(150),
	release_date DATE,
	description VARCHAR(255),
	length INTEGER,
	rating VARCHAR(5),
	genre VARCHAR(150)
	
);

CREATE TABLE customer(
	cust_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(255),
	cust_email VARCHAR(150),
	cust_phone VARCHAR(15),
	cust_billinginfo VARCHAR(45),
	ticket_id INTEGER
);




CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	cust_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	theater_num INTEGER NOT NULL,
	seat_num VARCHAR(4),
	ticket_price DECIMAL(5,2),
	show_date DATE,
	start_time TIME,
	FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE show_ (
	show_id SERIAL PRIMARY KEY,
	show_date DATE,
	start_time TIME,
	end_time TIME,
	length_ INTEGER,
	movie_id INTEGER NOT NULL,
	theaterhall_id INTEGER NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE theaterhall(
	theaterhall_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	show_id INTEGER NOT NULL,
	theater_num INTEGER,
	seat_num VARCHAR(4),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (show_id) REFERENCES show_(show_id)
	
);

