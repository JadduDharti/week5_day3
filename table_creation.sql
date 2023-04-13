CREATE TABLE Customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  city VARCHAR(10),
  phone_number INTEGER,
  total_price NUMERIC(6,2),
  total_tickets INTEGER
);

CREATE TABLE Staff(
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  gender VARCHAR(10),
  birthdate DATE,
  phone_number INTEGER,
  age INTEGER
);

CREATE TABLE Hall(
  hall_id SERIAL PRIMARY KEY,
  total_seat INTEGER
);

CREATE TABLE Movie(
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(50),
  movie_genre VARCHAR(50),
  movie_length NUMERIC(6,2),
  movie_rating INTEGER
);

CREATE TABLE Movie_Time(
  movie_time_id SERIAL PRIMARY KEY,
  date DATE,
  time_screening TIME(4),
  movie_id INTEGER,
  hall_id INTEGER,
  FOREIGN KEY(movie_id)
  REFERENCES Movie(movie_id)
);

CREATE TABLE Seats (
  seat_id SERIAL PRIMARY KEY,
  "row" INTEGER,
  hall_id INTEGER,
   FOREIGN KEY(hall_id)
   REFERENCES Hall(hall_id)
);

CREATE TABLE Ticket(
  ticket_id SERIAL PRIMARY KEY,
  payment_method VARCHAR(50),
  price NUMERIC(6,2),
  staff_id INTEGER,
  seat_id INTEGER,
  hall_id INTEGER,
  movie_time_id INTEGER,
  customer_id INTEGER,
  FOREIGN KEY(customer_id)
   REFERENCES Customer(customer_id),
  FOREIGN KEY(staff_id)
   REFERENCES Staff(staff_id),
  FOREIGN KEY(hall_id)
   REFERENCES Hall(hall_id)
);
