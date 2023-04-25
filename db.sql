CREATE DATABASE IF NOT EXISTS move_database COLLATE utf8mb4_general_ci;

USE move_database;

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
    categories ENUM("t-shirt","hoodies","jackets","trouser","socks","running","basketball","football","training","accessories","bags","fashion"),
    brands ENUM("nike","underArmour","jordan","Adidas"),
    imageLink varchar(255),
    detailLink varchar(255)
);

CREATE TABLE IF NOT EXISTS cart(
    id int(11) AUTO_INCREMENT NOT NULL,
    name varchar(255),
    description varchar(255),
    qtt int(3),
    price float(8,2),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS checkout(
    id int(11) AUTO_INCREMENT NOT NULL,
    name varchar(100),
    email varchar(190),
    address varchar(255),
    city varchar(50),
    state varchar(50),
    postcode varchar(10),
    hp varchar(20),
    paymentType varchar(20),
    cardName varchar(100) NULL,
    cardNum varchar(20) NULL,
    exp varchar(10) NULL,
    cvv varchar(5) NULL,
    PRIMARY KEY(id)
);

INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear Tech Pack',425.00,'t-shirt','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Tech Pack.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Solo Swoosh',339.00,'hoodies','nike','/ASIGNMENT_WAD/images/products/Nike Solo Swoosh.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear Essential',425.00,'jackets','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Essential.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');

    