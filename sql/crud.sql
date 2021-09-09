--Tablo oluşturma
CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

--Update
UPDATE employee
	SET first_name = 'Jack'
WHERE last_name = 'Lattimer'
RETURNING *;

UPDATE employee
	SET first_name = 'XXXX'
WHERE first_name LIKE 'M%'
RETURNING *;

--Delete
DELETE FROM employee
WHERE first_name = 'XXXX';


