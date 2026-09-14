CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(20) NOT NULL
);

CREATE TABLE Organizers (
    organizer_id INT PRIMARY KEY,
    organizer_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(20) NOT NULL
);

CREATE TABLE Venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    organizer_id INT NOT NULL,
    venue_id INT NOT NULL,
    event_name VARCHAR(100) NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    event_date DATE NOT NULL,
    event_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id),
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    client_id INT NOT NULL,
    event_id INT NOT NULL,
    booking_date DATE NOT NULL,
    booking_status VARCHAR(30) NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT UNIQUE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    payment_status VARCHAR(30) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);
