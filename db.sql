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
    brands ENUM("nike","underArmour","jordan","adidas"),
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
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear Essential',359.00,'jackets','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Essential.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Dri-FIT Phenom Elite',329.00,'trouser','nike','/ASIGNMENT_WAD/images/products/Nike Dri-FIT Phenom Elite.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Everyday Plus',129.00,'socks','nike','/ASIGNMENT_WAD/images/products/Nike Everyday Plus.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Quest 5',309.00,'basketball','nike','/ASIGNMENT_WAD/images/products/Nike Quest 5.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('LeBron Witness 7 EP',339.00,'football','nike','/ASIGNMENT_WAD/images/products/LeBron Witness 7 EP.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Zoom Mercurial Superfly 9 Academy MG',399.00,'training','nike','/ASIGNMENT_WAD/images/products/Nike Zoom Mercurial Superfly 9 Academy MG.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Free Metcon 5',539.00,'accessories','nike','/ASIGNMENT_WAD/images/products/Nike Free Metcon 5.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Boonie',119.00,'bags','nike','/ASIGNMENT_WAD/images/products/Nike Boonie.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear RPM',369.00,'running','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear RPM.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear Club Fleece',55.00,'fashion','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Club Fleece.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Sportswear Premium Essentials',149.00,'basketball','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Premium Essentials.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike x Billie Eilish',335.00,'football','nike','/ASIGNMENT_WAD/images/products/Nike x Billie Eilish.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Air',435.00,'training','nike','/ASIGNMENT_WAD/images/products/Nike Air.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Flight MVP Graphic T Shirt',135.00,'t-shirt','jordan','/ASIGNMENT_WAD/images/products/Jordan Flight MVP Graphic T Shirt.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan NBA Charlotte Hornets Ball #1 Hoodie',389.00,'hoodies','jordan','/ASIGNMENT_WAD/images/products/Jordan NBA Charlotte Hornets Ball #1 Hoodie.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Air 23 Engineered Jacket',575.00,'jackets','jordan','/ASIGNMENT_WAD/images/products/Jordan Air 23 Engineered Jacket.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Velour Joggers',520.00,'trouser','jordan','/ASIGNMENT_WAD/images/products/Jordan Velour Joggers.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Everyday Crew Socks',95.00,'socks','jordan','/ASIGNMENT_WAD/images/products/Jordan Everyday Crew Socks.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Delta 3 Low',379.00,'running','jordan','/ASIGNMENT_WAD/images/products/Jordan Delta 3 Low.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Stay Loyal 2',509.00,'basketball','jordan','/ASIGNMENT_WAD/images/products/Jordan Stay Loyal 2.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan 1 TD Mid',332.00,'football','jordan','/ASIGNMENT_WAD/images/products/Jordan 1 TD Mid.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jumpman Two Trey',659.00,'training','jordan','/ASIGNMENT_WAD/images/products/Jumpman Two Trey.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Jumpman Classic99 Metal',99.00,'accessories','jordan','/ASIGNMENT_WAD/images/products/Jordan Jumpman Classic99 Metal.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Air Duffel Bag',189.00,'bags','jordan','/ASIGNMENT_WAD/images/products/Jordan Air Duffel Bag.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Nike Air Max Scorpion Flyknit',1149.00,'fashion','jordan','/ASIGNMENT_WAD/images/products/Nike Air Max Scorpion Flyknit.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Jumpman',99.00,'accessories','jordan','/ASIGNMENT_WAD/images/products/Jordan Jumpman.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Jordan Air Crossbody Bag',129.00,'bags','jordan','/ASIGNMENT_WAD/images/products/Jordan Air Crossbody Bag.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Jordan Air 1 Mid Women's",559.00,'fashion','jordan',"/ASIGNMENT_WAD/images/products/Jordan Air 1 Mid Women's.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Women's UA Tech T Shirt",109.00,'t-shirt','underArmour',"/ASIGNMENT_WAD/images/products/Women's UA Tech T Shirt.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA Rival Fleece Big Logo Hoodie",199.00,'hoodies','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Rival Fleece Big Logo Hoodie.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Women's UA Rival Fleece Joggers",199.00,'jackets','underArmour',"/ASIGNMENT_WAD/images/products/Women's UA Rival Fleece Joggers.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Adult HeatGear Lo Cut Socks 3 Pack',79.00,'trouser','underArmour','/ASIGNMENT_WAD/images/products/Adult HeatGear Lo Cut Socks 3 Pack.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA Surge 3 Running Shoes",179.00,'socks','underArmour','/ASIGNMENT_WAD/images/products/Nike Sportswear Tech Pack.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Unisex UA Lockdown 6 Basketball Shoes',279.00,'running','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Lockdown 6 Basketball Shoes.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Unisex UA Clone Magnetico Premier 2 FG Soccer Cleats',599.00,'basketball','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Clone Magnetico Premier 2 FG Soccer Cleats.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA HOVR Rise 4 Training Shoes",459.00,'football','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA HOVR Rise 4 Training Shoes.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA Weightlifting Gloves",199.00,'training','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Weightlifting Gloves.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Unisex UA Undeniable 5.0 XXS Duffle',119.00,'accessories','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Undeniable 5.0 XXS Duffle.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA Branded Bucket Hat",119.00,'bags','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Branded Bucket Hat.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Under Armour Curry 2 Northern Lights',399.00,'fashion','underArmour','/ASIGNMENT_WAD/images/products/Under Armour Curry 2 Northern Lights.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('Magnetico Select 2.0 FG Soccer Cleat Shoes',299.00,'basketball','underArmour','/ASIGNMENT_WAD/images/products/Magnetico Select 2.0 FG Soccer Cleat Shoes.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's Charged Impulse 3 Running Shoes",265.00,'football','underArmour',"/ASIGNMENT_WAD/images/products/Men's Charged Impulse 3 Running Shoes.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ("Men's UA TriBase Reign 5 Training Shoes",529.00,'training','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA TriBase Reign 5 Training Shoes",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADICOLOR CLASSICS TREFOIL TEE',179.00,'t-shirt','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS TREFOIL TEE.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADICOLOR NEUCLASSICS HOODIE',399.00,'hoodies','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR NEUCLASSICS HOODIE.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADICOLOR CLASSICS SST TRACK JACKET',379.00,'jackets','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS SST TRACK JACKET.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADICOLOR CLASSICS SST TRACK PANTS',379.00,'trouser','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS SST TRACK PANTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('MID-CUT GLITTER CREW SOCKS 2 PAIRS',59.00,'socks','adidas','/ASIGNMENT_WAD/images/products/MID-CUT GLITTER CREW SOCKS 2 PAIRS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADIZERO ADIOS PRO 3.0 SHOES',999.00,'running','adidas','/ASIGNMENT_WAD/images/products/ADIZERO ADIOS PRO 3.0 SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('FORUM LOW SHOES',419.00,'basketball','adidas','/ASIGNMENT_WAD/images/products/FORUM LOW SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('X SPEEDPORTAL.3 FIRM GROUND BOOTS',319.00,'football','adidas','/ASIGNMENT_WAD/images/products/X SPEEDPORTAL.3 FIRM GROUND BOOTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('TRAINER V SHOES',379.00,'training','adidas','/ASIGNMENT_WAD/images/products/TRAINER V SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('X SPEEDPORTAL TRAINING GLOVES',119.00,'accessories','adidas','/ASIGNMENT_WAD/images/products/X SPEEDPORTAL TRAINING GLOVES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('4ATHLTS ID BACKPACK',299.00,'bags','adidas','/ASIGNMENT_WAD/images/products/4ATHLTS ID BACKPACK.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('TIRO SUIT-UP ADVANCED TRACK TOP',425.00,'fashion','adidas','/ASIGNMENT_WAD/images/products/TIRO SUIT-UP ADVANCED TRACK TOP.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADICOLOR CLASSICS ADIBREAK TRACK PANTS',379.00,'trouser','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS ADIBREAK TRACK PANTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADIDAS RUNNING X SUPERNOVA QUARTER PERFORMANCE SOCKS',79.00,'socks','adidas','/ASIGNMENT_WAD/images/products/ADIDAS RUNNING X SUPERNOVA QUARTER PERFORMANCE SOCKS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name, price,categories,brands,imageLink,detailLink) VALUES ('ADIDAS ADIZERO SL RUNNING SHOES',499.00,'running','adidas','/ASIGNMENT_WAD/images/products/ADIDAS ADIZERO SL RUNNING SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');