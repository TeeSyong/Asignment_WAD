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
    productLink varchar(500),
    categories ENUM("Clothing", "Footwear", "Accessories"),
    subCategories ENUM("T-Shirts","Hoodies","Jackets","Trouser","Socks","Running","Basketball","Football","Gym","Accessories","Bags","Fashion"),
    brands ENUM("Nike","UnderArmour","Jordan","Adidas"),
    price numeric(10,2),
    colour varchar(255),
    prod_description text,
    prod_attribute1 varchar(255),
    prod_attribute2 varchar(255),
    prod_attribute3 varchar(255),
    prod_attribute4 varchar(255),
    imageLink varchar(500)
);

CREATE TABLE IF NOT EXISTS images(
    id int(11) AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    colour varchar(255),
    image1_link varchar(500),
    image2_link varchar(500),
    image3_link varchar(500),
    image4_link varchar(500),
    image5_link varchar(500),
    image6_link varchar(500),
    image7_link varchar(500)
);





CREATE TABLE IF NOT EXISTS cart(
    id int(11) AUTO_INCREMENT NOT NULL,
    link varchar(500),
    name varchar(255),
    colour varchar(255),
    price float(8,2),
    size varchar(10),
    quantity int(5),
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

INSERT INTO product VALUES ('', 'Nike Dunk High Retro', 'http://localhost/Asignment_WAD/productdetails/NikeDunkHighRetro_BlackWhite.php', 
'Footwear', 'Basketball', 'Nike', '1289.99', 'White', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_4.png');


INSERT INTO product VALUES ('', 'Nike Dunk High Retro', 'http://localhost/Asignment_WAD/productdetails/NikeDunkHighRetro_Orange.php', 
'Footwear', 'Basketball', 'Nike', '899.99', 'Orange', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_4.png');

INSERT INTO product VALUES ('', 'Nike Dunk High Retro', 'http://localhost/Asignment_WAD/productdetails/NikeDunkHighRetro_Green.php', 
'Footwear', 'Basketball', 'Nike', '739.99', 'Green', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_4.png');

INSERT INTO product VALUES ('', 'Nike Sportswear Max90', 'http://localhost/Asignment_WAD/productdetails/T-Shirt/Nike/NikeSportswearMax90.php', 
'Clothing', 'T-Shirt', 'Nike', '149.00', '', "Keep your tee game fresh with style picked just for you. Made from midweight cotton that has a 
slight drape, this everyday favourite is cut for comfort.", 'Colour Shown: White/Black', 'Style: FJ5245-100', '', '', 
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_1.png');

INSERT INTO images VALUES ('', 'Nike Dunk High Retro','White',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_1.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_2.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_3.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_4.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_5.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_6.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_7.png');

INSERT INTO images VALUES ('', 'Nike Dunk High Retro','Orange',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_1.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_2.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_3.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_4.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_5.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_6.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_7.png');

INSERT INTO images VALUES ('', 'Nike Dunk High Retro','Green',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_1.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_2.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_3.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_4.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_5.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_6.png',
'/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_7.png');

INSERT INTO images VALUES ('', 'Nike Sportswear Max90','',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_6.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_7.png');