--Changed column name
ALTER TABLE theater RENAME COLUMN location to location_


ALTER TABLE movie RENAME COLUMN length to length_

ALTER TABLE employee 
ADD theater_id INTEGER NOT NULL 


ALTER TABLE employee ADD CONSTRAINT theater_id FOREIGN KEY (theater_id) REFERENCES theater(theater_id);


--Insert Info into Theater Table
INSERT INTO theater (theater_name, location_)
VALUES ('Watchers Lane', '333 Watch Street Watchtown, WA 22022')

--Insert additional info into Theater Table to verify Serial AutoIncrement
INSERT INTO theater (theater_name, location_)
VALUES ('Viewers Valley', '222 View Street Viewlake, VA 12345')


--Insert into Employee Table
INSERT INTO employee (emp_firstname, emp_lastname, emp_phone, emp_email, emp_address, theater_id)
VALUES ('Ima', 'Worker', '420-864-2086', 'iwork@wlane.com', '1357 Workers Way Tinseltown, WA 22015', 1),
('Busi', 'Bee', '975-533-3119', 'bbee@vvalley.com', '29374 Safe Street Seeriver, VA 12342', 2)


--Insert into Concessions Table
INSERT INTO concessions (cons_name, cons_type, cons_price)
VALUES ('Nachos','Snack', 7.99),
 ('Popcorn','Snack', 9.99),
 ('Pretzels','Snack', 5.99),
 ('Plain M & M','Candy', 4.99),
 ('Peanut M & M','Candy', 5.99),
 ('Jolly Rancher Gummies','Candy', 6.99),
 ('Pizza Slice','Snack', 3.50),
 ('Slushies','Beverage', 6.99),
 ('Soda','Beverage', 4.99)


--Insert into Movie Table
INSERT INTO movie (movie_title, release_date, description, length_, rating, genre)
VALUES ('Dont Watch This', '12-04-2022', 'A movie showing why you should not watch it. :)', 75, 'PG', 'Comedy'),
 ('Sing Along with Us', '12-02-2022', 'A musical', 93 , 'G', 'Musical'),
 ('Beautiful in Blue', '12-02-2022', 'The star struck love bug is chased by the one they did not expect.', 102 , 'NC-17', 'Drama')


 
 --Insert into Customer Table
 INSERT INTO customer (cust_name, cust_email, cust_phone, cust_billinginfo, ticket_id)
VALUES ('Moo V Watcher', 'mvw@likesthem.go', '790-245-7901', '1234-5678-9012 Code: 899 Exp: 10-27', 1)

--Insert into Ticket Table
INSERT INTO ticket (cust_id, movie_id, theater_num, seat_num, ticket_price, show_date, start_time)
VALUES (1, 2, 3, 'M-24', 12.99, '12-02-2022', '11:00')


--Insert into Show Table
INSERT INTO show_ (show_date, start_time, end_time, length_, movie_id, theaterhall_id)
VALUES ('12-02-2022', '11:00', '12:30', 75, 1, 1),
('12-02-2022', '13:00', '14:30', 75, 1, 1),
 ('12-02-2022', '15:00', '16:30', 75, 1, 1),
 ('12-02-2022', '17:00', '18:30', 75, 1, 1),
 ('12-02-2022', '19:00', '20:30', 75, 1, 1),
 ('12-02-2022', '21:00', '22:30', 75, 1, 1),
 ('12-02-2022', '23:00', '00:30', 75, 1, 1),
 ('12-02-2022', '11:00', '12:50', 93, 2, 2),
 ('12-02-2022', '13:20', '15:10', 93, 2, 2),
 ('12-02-2022', '15:40', '17:25', 93, 2, 2),
 ('12-02-2022', '17:55', '19:45', 93, 2, 2),
 ('12-02-2022', '20:15', '22:00', 93, 2, 2),
 ('12-02-2022', '22:30', '00::18', 93, 2, 2),
 ('12-02-2022', '11:00', '12:57', 102, 3, 3),
 ('12-02-2022', '13:30', '15:25', 102, 3, 3),
 ('12-02-2022', '15:55', '17:51', 102, 3, 3),
 ('12-02-2022', '18:25', '20:18', 102, 3, 3),
 ('12-02-2022', '20:50', '22:45', 102, 3, 3),
 ('12-02-2022', '23:15', '01:12', 102, 3, 3)
 
 
 

--Insert into TheaterHall Table
 INSERT INTO theaterhall (movie_id, show_id, theater_num, seat_num)
 VALUES (1, 2, 3, 'M-24')


 