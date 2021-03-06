CREATE DATABASE mydatabase;

CREATE TABLE employee(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL ,
    last_name VARCHAR(50) NOT NULL ,
    age INT NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100)  
    department_id BIGINT REFERENCES NOT NULL  department(id)
);

CREATE TABLE department(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    department_location VARCHAR(50) NOT NULL
);