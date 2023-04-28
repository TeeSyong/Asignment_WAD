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
    subCategories ENUM("T-Shirt","Hoodie","Jacket","Trouser","Sock","Running","Basketball","Football","Gym","Accessories","Bags","Fashion"),
    brands ENUM("Nike","Under Armour","Jordan","Adidas"),
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
    productId varchar(25),
    link varchar(500),
    imglink varchar(500),
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

CREATE TABLE IF NOT EXISTS contact(
    id int(11) AUTO_INCREMENT NOT NULL,
    name varchar(100),
    email varchar(190),
    message varchar(255),
    PRIMARY KEY(id)
);

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Sportswear Essential Repel', '/Asignment_WAD/productDetails/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White.php', 
'Clothing', 'Jacket', 'Nike', '265.00', 'White', "The Nike Sportswear Essential Repel Jacket is made from smooth, water-repellent fabric to help keep you dry and comfortable 
in cool, wet weather. Elasticated cuffs hold the sleeves in place while exposed bungees at the hem let you customise the style and fit.", 
'Oversized fit for a baggy, spacious feel', 'Embroidered Futura logo', 'Style: DM6180-010', 'Country/Region of Origin: Vietnam', 
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Sportswear Essential Repel', '/Asignment_WAD/productDetails/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black.php', 
'Clothing', 'Jacket', 'Nike', '265.00', 'Black', "The Nike Sportswear Essential Repel Jacket is made from smooth, water-repellent fabric to help keep you dry and comfortable 
in cool, wet weather. Elasticated cuffs hold the sleeves in place while exposed bungees at the hem let you customise the style and fit.", 
'Oversized fit for a baggy, spacious feel', 'Embroidered Futura logo', 'Style: DM6180-100', 'Country/Region of Origin: Vietnam', 
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_1.png');


INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('UA Unstoppable Jacket', '/Asignment_WAD/productDetails/Clothing/Jackets/UnderArmour/UAUnstoppableJacket.php', 
'Clothing', 'Jacket', 'Under Armour', '459.00', '', "If you're looking for a jacket you can actually train in on cold, wet days—you found it. Super-light 
and stretchy, rain rolls right off, and it keeps you warm but not hot.", 'UA Storm technology repels water without sacrificing breathability', 
'Stretch-woven fabric is lightweight, durable & moves with you', 'Style: DX1542-120', 'Country/Region of Origin: India', 
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_1.png');


INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Adidas Original Mid-Cut Crew Socks 3 Pairs', '/Asignment_WAD/productDetails/Clothing/Socks/Adidas/AdidasOriginalMid-CutCrewSocks.php', 
'Clothing', 'Sock', 'Adidas', '69.00', '', "Find your happy place between heel and calf. Not too short and not too tall, adidas Mid-Cut Crew Socks are a great look for working 
out or just kicking back. The cottony feel hits the sweet spot for comfort and fit.", 'Band around the arch feels snug and supportive.', 'Breathable knit pattern on top adds ventilation.', 
'Style: DX1232-100', 'Country/Region of Origin: India', '/ASIGNMENT_WAD/images/products/Clothing/Socks/Adidas/adidasOriginalsMid-CutCrewSocks_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Everyday Crew Socks 3 Pairs', '/Asignment_WAD/productDetails/Clothing/Socks/Jordan/JordanEverydayCrewSocks.php', 
'Clothing', 'Sock', 'Jordan', '95.00', '', "Your go-to, everyday, soft and reliable socks. Sweat-wicking technology keeps your feet cool and dry while 
a snug arch band feels supportive.", 'Cushioning under the forefoot and heel helps soften the impact of your workout.', 'Band around the arch feels snug 
and supportive.', 'Style: DX9632-100', 'Country/Region of Origin: China', '/ASIGNMENT_WAD/images/products/Clothing/Socks/Jordan/JordanEverydayCrewSocks3Pair_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Adult Heat Gear Crew Socks 3 Pairs', '/Asignment_WAD/productDetails/Clothing/Socks/UnderArmour/AdultHeatGearCrewSocks3Pair.php', 
'Clothing', 'Sock', 'Under Armour', '79.00', '', "The Adult Heat Gear Crew Socks bring comfort to your workout with extra cushioning under the 
heel and forefoot and a snug, supportive arch band. Sweat-wicking power and breathability up top help keep your feet dry and cool to help push 
you through that extra set.", 'Strategic Cushion reduces bulk, delivers flexibility & breathability', 'Mesh panels for added breathability', 
'Style: SX7623-123', 'Country/Region of Origin: Pakistan', '/ASIGNMENT_WAD/images/products/Clothing/Socks/UnderArmour/AdultHeatGearCrewSocks3-Pack_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Everyday Cushioned 3 Pairs', '/Asignment_WAD/productDetails/Clothing/Socks/Nike/NikeEverydayCushioned.php', 
'Clothing', 'Sock', 'Nike', '69.00', '', "Power through your workout with the Nike Everyday Cushioned Socks. The thick terry sole gives you 
extra comfort for foot drills and lifts, while a ribbed arch band wraps your midfoot for a supportive feel.", 'Dri-FIT Technology helps keep your 
feet dry and comfortable.', 'Thick terry sole provides comfort and impact absorption.', 'Style: SX7664-100', 'Country/Region of Origin: Pakistan,
Argentina,Vietnam,Turkey,Sri Lanka,China', '/ASIGNMENT_WAD/images/products/Clothing/Socks/Nike/NikeEverydayCushioned_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Aeroready Sereno Slim Tapered Cut 3-Striped Pants', '/Asignment_WAD/productDetails/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants.php', 
'Clothing', 'Trouser', 'Adidas', '189.00', '', "Whether you're preparing to compete or relaxing at home, stay ready for anything in these adidas pants. 
Move naturally in a distraction-free fit as you hustle through warm-up drills. AEROREADY keeps you feeling dry, fresh and comfortable even 
when the game starts to heat up.", 'Elastic waist with drawcord', 'Doubleknit', 'Style: H28909', 
'Country/Region of Origin: Cambodia', '/ASIGNMENT_WAD/images/products/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Sport Dri-FIT', '/Asignment_WAD/productDetails/Clothing/Trouser/Jordan/JordanSportDri-FIT.php', 
'Clothing', 'Trouser', 'Jordan', '205.00', '', "Fly on the court and look fly off it in the Jordan Sport Dri-FIT Trousers. Made from soft, 
sweat-wicking fabric, they've got a performance fit and feel with the functionality and style of the street. This product is made from at 
least 75% recycled polyester fibres.", 'Woven fabric is light and durable.', 'Leg zips let you adjust the fit.', 'Style: DH9073-011', 
'Country/Region of Origin: Vietnam', '/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Dri-FIT Academy', '/Asignment_WAD/productDetails/Clothing/Trouser/Nike/NikeDri-FITAcademy.php', 
'Clothing', 'Trouser', 'Nike', '129.00', '', "The Nike Dri-FIT Academy Trousers feature sweat-wicking fabric to help keep you dry and 
moving fast on the pitch. Tapered legs keep your feet clear on the ball, while zip hems let you change them quickly over boots or shoes. 
This product is made from 100% recycled polyester fibres.", 'Standard fit for a relaxed, easy feel', 'Zip pockets', 'Style: CW6123-010', 
'Country/Region of Origin: Vietnam', '/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('UA Vital Woven Pants', '/Asignment_WAD/productDetails/Clothing/Trouser/UnderArmour/UAVitalWovenPants.php', 
'Clothing', 'Trouser', 'Under Armour', '179.00', '', "The goal with the UA Woven collection was to make the perfect set of warm-ups that keep 
your muscles ready, work for any sport, and also pack up super-small in your bag, so you can take them anywhere.", 'Smooth, ripstop woven fabric is 
lightweight & extremely durable', 'Mesh lining delivers superior breathability & comfort', 'Style: 1352031', 'Country/Region of Origin: America', 
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Curry Logo Heavyweight Short Sleeve', '/Asignment_WAD/productDetails/Clothing/T-Shirt/UnderArmour/CurryLogoHeavyweightShortSleeve.php', 
'Clothing', 'T-Shirt', 'Under Armour', '199.00', '', 'Everything I put my name on has to be good—it has to help you play and it has to support our 
mission to change the game for good." - Stephen Curry', 'Heavyweight, soft cotton-blend fabric provides all-day comfort', '60% Cotton/40% Polyester', 
'Style: 1376801', 'Country/Region of Origin: Cambodia', '/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Flight Essentials', '/Asignment_WAD/productDetails/Clothing/T-Shirt/Jordan/JordanFlightEssentials_White.php', 
'Clothing', 'T-Shirt', 'Jordan', '149.00', 'White', "Designed with an intentionally oversized fit, this tee is ready for whatever the day brings. 
With a Jumpman woven patch on the chest, no one will question what you're about.", '100% cotton', 'Machine wash', 'Style: DZ7313-100', 
'Country/Region of Origin: Cambodia', '/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_white_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Flight Essentials', '/Asignment_WAD/productDetails/Clothing/T-Shirt/Jordan/JordanFlightEssentials_Black.php', 
'Clothing', 'T-Shirt', 'Jordan', '149.00', 'Black', "Designed with an intentionally oversized fit, this tee is ready for whatever the day brings. 
With a Jumpman woven patch on the chest, no one will question what you're about.", '100% cotton', 'Machine wash', 'Style: DZ7313-100', 
'Country/Region of Origin: Cambodia', '/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Adicolor Classics 3-Stripes Tee', '/Asignment_WAD/productDetails/Clothing/T-Shirt/Adidas/AdicolorClassics3-StripesTee.php', 
'Clothing', 'T-Shirt', 'Adidas', '179.00', 'White', "Meet your new favourite tee. This classic adidas t-shirt boasts a slim fit and a contrast 
hem for some refined vintage vibes. Pair it with your favourite dark denim for an effortlessly classic look. It's made of super-soft cotton to 
keep you comfortable.", '100% cotton single jersey', 'Made with Better Cotton', 'Ribbed cuffs', 'Product code: IA4846', 
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Adidas/AdicolorClassics3-StripesTee_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Sportswear Max 90', '/Asignment_WAD/productDetails/Clothing/T-Shirt/Nike/NikeSportswearMax90.php', 
'Clothing', 'T-Shirt', 'Nike', '149.00', '', "Keep your tee game fresh with style picked just for you. Made from midweight cotton that has a 
slight drape, this everyday favourite is cut for comfort.", 'Colour Shown: White/Black', 'Style: FJ5245-100', '', '', 
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Dunk High Retro', '/Asignment_WAD/productDetails/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite.php', 
'Footwear', 'Basketball', 'Nike', '1289.99', 'White', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_4.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Dunk High Retro', '/Asignment_WAD/productDetails/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange.php', 
'Footwear', 'Basketball', 'Nike', '899.99', 'Orange', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_4.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Dunk High Retro', '/Asignment_WAD/productDetails/Footwear/Basketball/Nike/NikeDunkHighRetro_Green.php', 
'Footwear', 'Basketball', 'Nike', '739.99', 'Green', "Created for the hardwood but taken to the streets, the '80s basketball icon returns 
with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s 
vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.", 'Foam insole', 'Perforations 
on the toe', 'Style: DD1399-105', 'Country / Region of Origin: Vietnam, Indonesia', '/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_4.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Sportswear Essential Repel','Black',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_Black_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Sportswear Essential Repel','White',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Nike/NikeSportswearEssentialRepel_White_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('UA Unstoppable Jacket','',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_6.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/UnderArmour/UAUnstoppableJacket_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Adidas Original Mid-Cut Crew Socks 3 Pairs','',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Adidas/adidasOriginalsMid-CutCrewSocks_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Adidas/adidasOriginalsMid-CutCrewSocks_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Adidas/adidasOriginalsMid-CutCrewSocks_3.png',
'','','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Everyday Crew Socks 3 Pairs','',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Jordan/JordanEverydayCrewSocks3Pair_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Jordan/JordanEverydayCrewSocks3Pair_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Jordan/JordanEverydayCrewSocks3Pair_3.png',
'','','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Adult Heat Gear Crew Socks 3 Pairs','',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/UnderArmour/AdultHeatGearCrewSocks3-Pack_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/UnderArmour/AdultHeatGearCrewSocks3-Pack_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/UnderArmour/AdultHeatGearCrewSocks3-Pack_3.png',
'','','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Everyday Cushioned 3 Pairs','',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Nike/NikeEverydayCushioned_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Nike/NikeEverydayCushioned_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Socks/Nike/NikeEverydayCushioned_3.png',
'','','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Aeroready Sereno Slim Tapered Cut 3-Striped Pants','',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Adidas/AeroreadySerenoSlimTaperedCut3-StripedPants_4.png',
'','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Sport Dri-FIT','',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Jordan/JordanSportDri-FIT_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Dri-FIT Academy','',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_6.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/Nike/NikeDri-FITAcademy_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('UA Vital Woven Pants','',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Trouser/UnderArmour/UAVitalWovenPants_5.png',
'','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Curry Logo Heavyweight Short Sleeve','',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/UnderArmour/CurryLogoHeavyweightShortSleeve_5.png',
'','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Flight Essentials','White',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_white_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_white_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_white_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_white_4.png',
'','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Flight Essentials','Black',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Jordan/JordanFlightEssentials_black_5.png',
'','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Adicolor Classics 3-Stripes Tee','White',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Adidas/AdicolorClassics3-StripesTee_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Adidas/AdicolorClassics3-StripesTee_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Adidas/AdicolorClassics3-StripesTee_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Adidas/AdicolorClassics3-StripesTee_4.png',
'','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Sportswear Max 90','',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/T-Shirts/Nike/NikeSportswearMax90_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Dunk High Retro','White',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_BlackWhite_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Dunk High Retro','Orange',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Orange_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Dunk High Retro','Green',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Nike/NikeDunkHighRetro_Green_7.png');





