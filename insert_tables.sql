INSERT INTO Clients
(client_id, client_name, contact_number) VALUES
(1, 'Ariana Santos', '09171234567'),
(2, 'Maria Lopez', '09181234567'),
(3, 'Joshua Cruz', '09191234567'),
(4, 'Bea Garcia', '09201234567'),
(5, 'Daniel Reyes', '09211234567');


INSERT INTO Organizers
(organizer_id, organizer_name, contact_number) VALUES
(1, 'Sofia Mendoza', '09170001111'),
(2, 'Mark Reyes', '09170002222'),
(3, 'Ella Torres', '09170003333'),
(4, 'Kevin Ramos', '09170004444'),
(5, 'Claire Navarro', '09170005555');


INSERT INTO Venues
(venue_id, venue_name, location) VALUES
(1, 'Garden Pavilion', 'Tagaytay'),
(2, 'Grand Celebration Hall', 'Manila'),
(3, 'Crystal Events Center', 'Quezon City'),
(4, 'Sunset Garden', 'Cavite'),
(5, 'Royal Events Hall', 'Laguna');


INSERT INTO Events
(event_id, organizer_id, venue_id, event_name, event_type, event_date, event_price) VALUES
(1, 1, 1, 'Ariana Birthday Celebration', 'Birthday', '2026-10-10', 25000.00),
(2, 2, 2, 'Maria and John Wedding', 'Wedding', '2026-10-18', 80000.00),
(3, 3, 3, 'Joshua Debut Celebration', 'Debut', '2026-11-05', 60000.00),
(4, 4, 4, 'Bea Anniversary Party', 'Anniversary', '2026-11-15', 40000.00),
(5, 5, 5, 'Daniel Graduation Party', 'Graduation', '2026-12-05', 30000.00);


INSERT INTO Bookings
(booking_id, client_id, event_id, booking_date, booking_status) VALUES
(1, 1, 1, '2026-09-01', 'Confirmed'),
(2, 2, 2, '2026-09-02', 'Confirmed'),
(3, 3, 3, '2026-09-03', 'Pending'),
(4, 4, 4, '2026-09-04', 'Confirmed'),
(5, 5, 5, '2026-09-05', 'Pending');


INSERT INTO Payments
(payment_id, booking_id, amount, payment_method, payment_status) VALUES
(1, 1, 25000.00, 'GCash', 'Paid'),
(2, 2, 40000.00, 'Bank Transfer', 'Paid'),
(3, 3, 30000.00, 'GCash', 'Pending'),
(4, 4, 20000.00, 'Cash', 'Paid'),
(5, 5, 15000.00, 'GCash', 'Pending');
