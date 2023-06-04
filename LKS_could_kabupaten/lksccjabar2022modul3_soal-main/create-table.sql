CREATE TABLE IF NOT EXISTS users ( 
  id serial PRIMARY KEY,
  username VARCHAR(50) NOT NULL, 
  password VARCHAR(50) NOT NULL
 )


 CREATE TABLE IF NOT EXISTS notes ( 
  id serial PRIMARY KEY, 
  title VARCHAR(50) NOT NULL, 
  notes TEXT NOT NULL,
  file TEXT NULL
 )