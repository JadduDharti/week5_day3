-- CREATE TABLE Customer(
--   customer_id SERIAL PRIMARY KEY,
--   first_name VARCHAR(25),
--   last_name VARCHAR(25),
--   city VARCHAR(10),
--   phone_number INTEGER,
--   total_price NUMERIC(6,2),
--   total_tickets INTEGER
-- );

ALTER TABLE Customer
ALTER COLUMN city TYPE VARCHAR(50);

ALTER TABLE Customer
ALTER COLUMN phone_number TYPE BIGINT;

INSERT INTO Customer(
	first_name, 
	last_name, 
	city, 
	phone_number, 
	total_price, 
	total_tickets
) VALUES('John', 'Doe', 'New York', 1234567890, 250.75, 3),
       ('Jane', 'Smith', 'Los Angeles', 9876543210, 120.50, 2),
       ('Alice', 'Johnson', 'Chicago', 5551234567, 500.25, 5),
       ('Bob', 'Brown', 'San Francisco', 1112223333, 150.00, 1);
	   
	  
SELECT * 
FROM customer;



-- CREATE TABLE Staff(
--   staff_id SERIAL PRIMARY KEY,
--   first_name VARCHAR(25),
--   last_name VARCHAR(25),
--   gender VARCHAR(10),
--   birthdate DATE,
--   phone_number INTEGER,
--   age INTEGER
-- );

INSERT INTO Staff(
	first_name, 
	last_name, 
	gender, 
	birthdate, 
	phone_number, 
	age
)VALUES ('Sarah', 'Johnson', 'Female', '1993-06-12', 9876543210, 28),
       ('Michael', 'Williams', 'Male', '1978-02-28', 5551234567, 45),
       ('Emily', 'Davis', 'Female', '1986-09-05', 1112223333, 37),
       ('David', 'Lee', 'Male', '1990-11-15', 9998887777, 31),
       ('Sophia', 'Brown', 'Female', '1995-04-20', 1234567890, 26);
	   
	   
SELECT * 
FROM staff;


-- CREATE TABLE Hall(
--   hall_id SERIAL PRIMARY KEY,
--   total_seat INTEGER
-- );

INSERT INTO Hall(
	total_seat
)VALUES (100),
       (150),
       (200);
	   
SELECT * 
FROM hall;


-- CREATE TABLE Movie(
--   movie_id SERIAL PRIMARY KEY,
--   movie_name VARCHAR(50),
--   movie_genre VARCHAR(50),
--   movie_length NUMERIC(6,2),
--   movie_rating INTEGER
-- );

INSERT INTO Movie(
	movie_name, 
	movie_genre, 
	movie_length, 
	movie_rating
) VALUES('The Shawshank Redemption', 'Drama', 2.22, 9),
       ('The Godfather', 'Crime', 2.75, 9),
       ('Forrest Gump', 'Drama', 2.22, 8),
       ('The Dark Knight', 'Action', 2.32, 9);
	   
	   
SELECT * 
FROM movie;


-- CREATE TABLE Movie_Time(
--   movie_time_id SERIAL PRIMARY KEY,
--   date DATE,
--   time_screening TIME(4),
--   movie_id INTEGER,
--   hall_id INTEGER,
--   FOREIGN KEY(movie_id)
--   REFERENCES Movie(movie_id)
-- );

INSERT INTO Movie_Time(
	date, 
	time_screening, 
	movie_id, 
	hall_id
) VALUES('2023-04-14', '14:00', 1, 1),
       ('2023-04-14', '16:30', 2, 2),
       ('2023-04-14', '19:00', 3, 1),
       ('2023-04-15', '15:30', 4, 2),
       ('2023-04-15', '18:00', 1, 1),
       ('2023-04-16', '20:00', 2, 2),
       ('2023-04-16', '22:30', 3, 1);
	   
SELECT * 
FROM movie_time;

-- CREATE TABLE Seats (
--   seat_id SERIAL PRIMARY KEY,
--   "row" INTEGER,
--   hall_id INTEGER,
--    FOREIGN KEY(hall_id)
--    REFERENCES Hall(hall_id)
-- );

INSERT INTO Seats(
	"row", 
	hall_id
) VALUES(1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 2),
       (6, 2),
       (7, 2),
       (8, 2),
       (9, 3),
       (10, 3);
	   
SELECT *
FROM seats;

-- CREATE TABLE Ticket(
--   ticket_id SERIAL PRIMARY KEY,
--   payment_method VARCHAR(50),
--   price NUMERIC(6,2),
--   staff_id INTEGER,
--   seat_id INTEGER,
--   hall_id INTEGER,
--   movie_time_id INTEGER,
--   customer_id INTEGER,
--   FOREIGN KEY(customer_id)
--    REFERENCES Customer(customer_id),
--   FOREIGN KEY(staff_id)
--    REFERENCES Staff(staff_id),
--   FOREIGN KEY(hall_id)
--    REFERENCES Hall(hall_id)
-- );

INSERT INTO Ticket(
	payment_method, 
	price, 
	staff_id, 
	seat_id, 
	hall_id, 
	movie_time_id, 
	customer_id
)VALUES
('Cash', 12.50, 2, 7, 1, 3, 1),
('Credit Card', 10.00, 3, 5, 2, 2, 2),
('Cash', 8.75, 1, 8, 1, 4, 3),
('Credit Card', 9.99, 4, 6, 2, 1, 4),
('Cash', 15.00, 3, 9, 3, 5, 1),
('Credit Card', 11.25, 2, 2, 1, 2, 2),
('Cash', 7.50, 1, 3, 2, 6, 2),
('Credit Card', 14.99, 4, 1, 3, 7, 3),
('Cash', 10.50, 2, 11, 1, 8, 2),
('Credit Card', 12.75, 3, 4, 2, 3, 1),
('Cash', 8.99, 1, 10, 1, 4, 3),
('Credit Card', 11.50, 4, 8, 2, 5, 4),
('Cash', 9.25, 3, 6, 3, 6, 1),
('Credit Card', 13.99, 2, 12, 1, 7, 4),
('Cash', 11.00, 1, 15, 2, 8, 3);