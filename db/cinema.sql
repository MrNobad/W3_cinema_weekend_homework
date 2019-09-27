DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;

CREATE TABLE films (
id SERIAL8 PRIMARY KEY,
title VARCHAR(255),
price INT4
);

CREATE TABLE customers (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  funds INT4
);

CREATE TABLE tickets (
  id SERIAL8 PRIMARY KEY,
  customer_id INT8 REFERENCES customer(id) ON DELETE CASCADE,
  films_id INT8 REFERENCES films(id) ON DELETE CASCADE
);
