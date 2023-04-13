# week5_day3

Customer: 
  Stores information about customers who book tickets, 
  including customer ID, first name, 
  last name, city, phone number, 
  total price of tickets booked, 
  and total number of tickets booked.

Staff: 
   Stores information about staff members who work at the movie theater, 
   including staff ID, 
   first name, 
   last name, 
   gender, 
   birthdate, 
   phone number, 
   and age.

Hall: 
    Stores information about movie theater halls, 
    including hall ID and total number of seats in each hall.

Movie: 
    Stores information about movies being screened at the movie theater,
    including movie ID, movie name, 
    movie genre, 
    movie length, 
    and movie rating.

Movie_Time: 
    Stores information about movie screenings, 
    including movie time ID, 
    date of screening, 
    time of screening, 
    movie ID, 
    and hall ID. 
    The movie_id column in this table is a foreign key referencing the movie_id column in the Movie table, 
    establishing a relationship between the two tables.

Seats: 
    Stores information about seats in movie theater halls, 
    including seat ID, 
    row number, 
    and hall ID. 
    The hall_id column in this table is a foreign key referencing the hall_id column in the Hall table, 
    establishing a relationship between the two tables.

Ticket: 
    Stores information about tickets booked by customers, 
    including ticket ID, 
    payment method, 
    ticket price, 
    staff ID (the staff member who sold the ticket), 
    seat ID (the seat booked by the customer), 
    hall ID (the hall where the movie screening takes place),
    movie time ID (the specific movie screening time),
    and customer ID (the ID of the customer who booked the ticket). 
    The customer_id, staff_id, hall_id, 
    and movie_time_id columns in this table are foreign keys referencing the corresponding columns in the Customer, 
    Staff, Hall, 
    and Movie_Time tables, 
    respectively, 
    establishing relationships between these tables.
    
    
Relationships between tables:- 

One-to-Many Relationship between Movie and Movie_Time:
    The Movie table has a primary key movie_id, 
    which is referenced as a foreign key movie_id in the Movie_Time table. 
    This establishes a one-to-many relationship between Movie and Movie_Time, 
    where one movie can have multiple movie screening times in the Movie_Time table.

One-to-Many Relationship between Hall and Movie_Time: 
    The Hall table has a primary key hall_id, 
    which is referenced as a foreign key hall_id in the Movie_Time table. 
    This establishes a one-to-many relationship between Hall and Movie_Time, 
    where one hall can have multiple movie screening times in the Movie_Time table.

One-to-Many Relationship between Hall and Seats: 
    The Hall table has a primary key hall_id, 
    which is referenced as a foreign key hall_id in the Seats table. 
    This establishes a one-to-many relationship between Hall and Seats, 
    where one hall can have multiple seats in the Seats table.

Many-to-Many Relationship between Customer and Ticket: 
    The Customer table has a primary key customer_id, 
    which is referenced as a foreign key customer_id in the Ticket table. 
    This establishes a many-to-many relationship between Customer and Ticket,
    where one customer can book multiple tickets, 
    and each ticket is associated with one customer.

Many-to-Many Relationship between Staff and Ticket: 
    The Staff table has a primary key staff_id, 
    which is referenced as a foreign key staff_id in the Ticket table. 
    This establishes a many-to-many relationship between Staff and Ticket, 
    where one staff member can sell multiple tickets, 
    and each ticket is associated with one staff member.

Many-to-Many Relationship between Hall, Seats, and Ticket: 
    The Hall table has a primary key hall_id, 
    which is referenced as a foreign key hall_id in the Ticket table. 
    The Seats table has a primary key seat_id, 
    which is also referenced as a foreign key seat_id in the Ticket table. 
    This establishes a many-to-many relationship between Hall, Seats, and Ticket, 
    where one ticket is associated with one hall and one seat, 
    and each hall can have multiple tickets and each seat can be associated with multiple tickets.
    
    

