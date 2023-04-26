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

INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Sportswear Max90',135.00,'Clothing','T-Shirts','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Max90.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Solo Swoosh',339.00,'Clothing','Hoodies','nike','/ASIGNMENT_WAD/images/products/Nike Solo Swoosh.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Sportswear Essential',359.00,'Clothing','Jackets','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Essential.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Dri-FIT Phenom Elite',329.00,'Clothing','Trouser','nike','/ASIGNMENT_WAD/images/products/Nike Dri-FIT Phenom Elite.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Everyday Plus',129.00,'Clothing','Socks','nike','/ASIGNMENT_WAD/images/products/Nike Everyday Plus.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Quest 5',309.00,'Footwear','Running','nike','/ASIGNMENT_WAD/images/products/Nike Quest 5.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('LeBron Witness 7 EP',339.00,'Footwear','Basketball','nike','/ASIGNMENT_WAD/images/products/LeBron Witness 7 EP.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Zoom Mercurial Superfly 9 Academy MG',399.00,'Footwear','Football','nike','/ASIGNMENT_WAD/images/products/Nike Zoom Mercurial Superfly 9 Academy MG.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Free Metcon 5',539.00,'Footwear','Gym','nike','/ASIGNMENT_WAD/images/products/Nike Free Metcon 5.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Boonie',119.00,'Accessories','Accessories','nike','/ASIGNMENT_WAD/images/products/Nike Boonie.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Sportswear RPM',369.00,'Accessories','Bags','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear RPM.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Sportswear Club Fleece',55.00,'Accessories','Fashion','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Club Fleece.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Sportswear Premium Essentials',149.00,'Clothing','T-Shirts','nike','/ASIGNMENT_WAD/images/products/Nike Sportswear Premium Essentials.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike x Billie Eilish',335.00,'Clothing','Hoodies','nike','/ASIGNMENT_WAD/images/products/Nike x Billie Eilish.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike x sacai',1755.00,'Clothing','Jackets','nike','/ASIGNMENT_WAD/images/products/Nike x sacai.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Flight MVP Graphic T Shirt',135.00,'Clothing','T-Shirts','jordan','/ASIGNMENT_WAD/images/products/Jordan Flight MVP Graphic T Shirt.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan NBA Charlotte Hornets Ball 1 Hoodie',389.00,'Clothing','Hoodies','jordan','/ASIGNMENT_WAD/images/products/Jordan NBA Charlotte Hornets Ball 1 Hoodie.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Air 23 Engineered Jacket',575.00,'Clothing','Jackets','jordan','/ASIGNMENT_WAD/images/products/Jordan Air 23 Engineered Jacket.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Velour Joggers',520.00,'Clothing','Trouser','jordan','/ASIGNMENT_WAD/images/products/Jordan Velour Joggers.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Everyday Crew Socks',95.00,'Clothing','Socks','jordan','/ASIGNMENT_WAD/images/products/Jordan Everyday Crew Socks.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Delta 3 Low',379.00,'Footwear','Running','jordan','/ASIGNMENT_WAD/images/products/Jordan Delta 3 Low.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Stay Loyal 2',509.00,'Footwear','Basketball','jordan','/ASIGNMENT_WAD/images/products/Jordan Stay Loyal 2.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan 1 TD Mid',332.00,'Footwear','Football','jordan','/ASIGNMENT_WAD/images/products/Jordan 1 TD Mid.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jumpman Two Trey',659.00,'Footwear','Gym','jordan','/ASIGNMENT_WAD/images/products/Jumpman Two Trey.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Jumpman Classic99 Metal',99.00,'Accessories','Accessories','jordan','/ASIGNMENT_WAD/images/products/Jordan Jumpman Classic99 Metal.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Air Duffel Bag',189.00,'Accessories','Bags','jordan','/ASIGNMENT_WAD/images/products/Jordan Air Duffel Bag.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Nike Air Max Scorpion Flyknit',1149.00,'Accessories','Fashion','jordan','/ASIGNMENT_WAD/images/products/Nike Air Max Scorpion Flyknit.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Jumpman',99.00,'Accessories','Accessories','jordan','/ASIGNMENT_WAD/images/products/Jordan Jumpman.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Jordan Air Crossbody Bag',129.00,'Accessories','Bags','jordan','/ASIGNMENT_WAD/images/products/Jordan Air Crossbody Bag.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Jordan Air 1 Mid Women's",559.00,'Accessories','Fashion','jordan',"/ASIGNMENT_WAD/images/products/Jordan Air 1 Mid Women's.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Women's UA Tech T Shirt",109.00,'Clothing','T-Shirts','underArmour',"/ASIGNMENT_WAD/images/products/Women's UA Tech T Shirt.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA Rival Fleece Big Logo Hoodie",199.00,'Clothing','Hoodies','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Rival Fleece Big Logo Hoodie.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Women's UA Rival Fleece Joggers",199.00,'Clothing','Jackets','underArmour',"/ASIGNMENT_WAD/images/products/Women's UA Rival Fleece Joggers.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Adult HeatGear Lo Cut Socks 3 Pack',79.00,'Clothing','Trouser','underArmour','/ASIGNMENT_WAD/images/products/Adult HeatGear Lo Cut Socks 3 Pack.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA Surge 3 Running Shoes",179.00,'Clothing','Socks','underArmour','/ASIGNMENT_WAD/images/products/Nike Sportswear Tech Pack.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Unisex UA Lockdown 6 Basketball Shoes',279.00,'Footwear','Running','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Lockdown 6 Basketball Shoes.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Unisex UA Clone Magnetico Premier 2 FG Soccer Cleats',599.00,'Footwear','Basketball','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Clone Magnetico Premier 2 FG Soccer Cleats.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA HOVR Rise 4 Training Shoes",459.00,'Footwear','Football','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA HOVR Rise 4 Training Shoes.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA Weightlifting Gloves",199.00,'Footwear','Gym','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Weightlifting Gloves.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Unisex UA Undeniable 5.0 XXS Duffle',119.00,'Accessories','Accessories','underArmour','/ASIGNMENT_WAD/images/products/Unisex UA Undeniable 5.0 XXS Duffle.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA Branded Bucket Hat",119.00,'Accessories','Bags','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA Branded Bucket Hat.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Under Armour Curry 2 Northern Lights',399.00,'Accessories','Fashion','underArmour','/ASIGNMENT_WAD/images/products/Under Armour Curry 2 Northern Lights.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('Magnetico Select 2.0 FG Soccer Cleat Shoes',299.00,'Footwear','Basketball','underArmour','/ASIGNMENT_WAD/images/products/Magnetico Select 2.0 FG Soccer Cleat Shoes.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's Charged Impulse 3 Running Shoes",265.00,'Footwear','Football','underArmour',"/ASIGNMENT_WAD/images/products/Mens Charged Impulse 3 Running Shoes.png",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ("Men's UA TriBase Reign 5 Training Shoes",529.00,'Footwear','Gym','underArmour',"/ASIGNMENT_WAD/images/products/Men's UA TriBase Reign 5 Training Shoes",'/ASIGNMENT_WAD/productDetails/NikeDunk.php');

INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADICOLOR CLASSICS TREFOIL TEE',179.00,'Clothing','T-Shirts','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS TREFOIL TEE.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADICOLOR NEUCLASSICS HOODIE',399.00,'Clothing','Hoodies','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR NEUCLASSICS HOODIE.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADICOLOR CLASSICS SST TRACK JACKET',379.00,'Clothing','Jackets','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS SST TRACK JACKET.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADICOLOR CLASSICS SST TRACK PANTS',379.00,'Clothing','Trouser','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS SST TRACK PANTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('MID-CUT GLITTER CREW SOCKS 2 PAIRS',59.00,'Clothing','Socks','adidas','/ASIGNMENT_WAD/images/products/MID-CUT GLITTER CREW SOCKS 2 PAIRS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADIZERO ADIOS PRO 3.0 SHOES',999.00,'Footwear','Running','adidas','/ASIGNMENT_WAD/images/products/ADIZERO ADIOS PRO 3.0 SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('FORUM LOW SHOES',419.00,'Footwear','Basketball','adidas','/ASIGNMENT_WAD/images/products/FORUM LOW SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('X SPEEDPORTAL.3 FIRM GROUND BOOTS',319.00,'Footwear','Football','adidas','/ASIGNMENT_WAD/images/products/X SPEEDPORTAL.3 FIRM GROUND BOOTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('TRAINER V SHOES',379.00,'Footwear','Gym','adidas','/ASIGNMENT_WAD/images/products/TRAINER V SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('X SPEEDPORTAL TRAINING GLOVES',119.00,'Accessories','Accessories','adidas','/ASIGNMENT_WAD/images/products/X SPEEDPORTAL TRAINING GLOVES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('4ATHLTS ID BACKPACK',299.00,'Accessories','Bags','adidas','/ASIGNMENT_WAD/images/products/4ATHLTS ID BACKPACK.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('TIRO SUIT-UP ADVANCED TRACK TOP',425.00,'Accessories','Fashion','adidas','/ASIGNMENT_WAD/images/products/TIRO SUIT-UP ADVANCED TRACK TOP.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADICOLOR CLASSICS ADIBREAK TRACK PANTS',379.00,'Clothing','Trouser','adidas','/ASIGNMENT_WAD/images/products/ADICOLOR CLASSICS ADIBREAK TRACK PANTS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADIDAS RUNNING X SUPERNOVA QUARTER PERFORMANCE SOCKS',79.00,'Clothing','Socks','adidas','/ASIGNMENT_WAD/images/products/ADIDAS RUNNING X SUPERNOVA QUARTER PERFORMANCE SOCKS.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');
INSERT INTO product (name,price,categories,subCategories,brands,imageLink,productLink) VALUES ('ADIDAS ADIZERO SL RUNNING SHOES',499.00,'Footwear','Running','adidas','/ASIGNMENT_WAD/images/products/ADIDAS ADIZERO SL RUNNING SHOES.png','/ASIGNMENT_WAD/productDetails/NikeDunk.php');

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
