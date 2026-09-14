Table Clients {
  client_id int [primary key]
  client_name varchar(100) [not null]
  contact_number varchar(20) [not null]
}

Table Organizers {
  organizer_id int [primary key]
  organizer_name varchar(100) [not null]
  contact_number varchar(20) [not null]
}

Table Venues {
  venue_id int [primary key]
  venue_name varchar(100) [not null]
  location varchar(100) [not null]
}

Table Events {
  event_id int [primary key]
  organizer_id int [ref: > Organizers.organizer_id, not null]
  venue_id int [ref: > Venues.venue_id, not null]
  event_name varchar(100) [not null]
  event_type varchar(50) [not null]
  event_date date [not null]
  event_price decimal(10,2) [not null]
}

Table Bookings {
  booking_id int [primary key]
  client_id int [ref: > Clients.client_id, not null]
  event_id int [ref: > Events.event_id, not null]
  booking_date date [not null]
  booking_status varchar(30) [not null]
}

Table Payments {
  payment_id int [primary key]
  booking_id int [ref: - Bookings.booking_id, unique, not null]
  amount decimal(10,2) [not null]
  payment_method varchar(30) [not null]
  payment_status varchar(30) [not null]
}
