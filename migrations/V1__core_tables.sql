CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  enrolled_on DATE
);
