CREATE DATABASE IF NOT EXISTS moves COLLATE utf8mb4_general_ci;

USE moves;

CREATE TABLE IF NOT EXISTS users(
    id int(11) AUTO_INCREMENT,
    fname varchar(255),
    lname varchar(255),
    email varchar(190),
    phone varchar(50),
    password varchar(255),
    cpassword varchar(255),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS product(
    id int(11) AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    price numeric(10,2),
    categories ENUM("",""),
    brands ENUM()
)

    
    