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
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan One Take 4 PF', '/Asignment_WAD/productDetails/Footwear/Running/Jordan/JordanOneTake4PF.php', 
'Footwear', 'Running', 'Jordan', '419.00', '', "Get that speed you need, just like Russ. Inspired by Russell Westbrook's latest signature shoe, 
the outsole of the Jordan One Take 4 wraps up nearly to the midsole so you can start, stop or change direction in an instant. Meanwhile, 
energy-returning Zoom Air cushioning in the forefoot keeps you goin' (and goin' and goin').", 'Midfoot plate runs through the shoe for added stability.',
'Herringbone outsole provides ample traction.','Style: DO7192-100', 'Country/Region of Origin: Indonesia', 
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Pegasus 40', '/Asignment_WAD/productDetails/Footwear/Running/Nike/NikePegasus40.php', 
'Footwear', 'Running', 'Nike', '589.00', '', "A springy ride for every run, the Peg's familiar, just-for-you feel returns to help you accomplish 
your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, 
like the arch and toes. Whether you're logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a 
spontaneous group jaunt, it's still the established road runner you can put your faith in, day after day, run after run.", 'Not intended for 
use as Personal Protective Equipment (PPE)','The heel area optimises the landing space and improves transition and durability.',
'Style: DV3854-102', 'Country/Region of Origin: Indonesia', '/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('UA Surge 3 Running Shoes', '/Asignment_WAD/productDetails/Footwear/Running/UnderArmour/UASurge3RunningShoes.php', 
'Footwear', 'Running', 'UnderArmour', '179.00', '', "These shoes are going to feel cushioned and comfortable, 
but also light and breathable. Why? Because when you never slow down, that's what you need.", 'Lightweight, breathable mesh upper',
'Enhanced cushioning around ankle collar for superior comfort','Style: AR5233-3231', 'Country/Region of Origin: Malaysia', 
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Copa Gloro Firm Ground Boots', '/Asignment_WAD/productDetails/Footwear/Football/Adidas/CopaGloroFirmGroundBoots.php', 
'Footwear', 'Football', 'Adidas', '479.00', '', "Passion turns an ordinary sport into a beautiful game. Fall in love with football again in these adidas 
Copa Gloro boots. Show your class in a soft cow leather upper that moulds to your foot for stability and offers an assured touch when the ball's 
heading your way. A specialist firm ground outsole keeps you stable on dry natural grass. Stitched details and a fold-over tongue keeps the look 
classic.", 'Leather upper with fold-over tongue','Firm ground outsole','Style: AR5344-311', 'Country/Region of Origin: Malaysia', 
'/ASIGNMENT_WAD/images/products/Footwear/Football/Adidas/CopaGloroFirmGroundBoots_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan 1 TD Mid', '/Asignment_WAD/productDetails/Footwear/Football/Jordan/Jordan1TDMid_1.php', 
'Footwear', 'Football', 'Jordan', '689.00', '', "With a lightweight, breathable upper, the Jordan 1 TD High Football Cleat helps you get off the mark 
first. A 1/2 inner sleeve provides a snug fit, while the cleated outsole gives you multidirectional traction so you can get into space quickly.", 
'Lightweight fabric and synthetic leather upper provides breathable comfort.','Cleated outsole offers multidirectional traction.',
'Style: AR5604-041', 'Country/Region of Origin: Vietnam', '/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Gripknit Phantom GX Elite Dynamic Fit FG', '/Asignment_WAD/productDetails/Footwear/Football/Nike/NikeGripknitPhantomGX.php', 
'Footwear', 'Football', 'Nike', '1119.00', '', "Obsessed with perfecting your craft? We design Elite boots for you and the world's biggest 
stars to give you high-level quality, because you demand greatness from yourself and your footwear. Made from revolutionary Nike Gripknit, 
this boot provides better touch on the ball in an intuitive design that helps enhance your precision both when striking and during close 
control. This version has a Dynamic Fit collar, which wraps your ankle in soft, stretchy fabric for a secure feel.", 'For use on slightly wet, short-grass pitches',
'Cushioned insole', 'Style: DC9969-446', 'Country/Region of Origin: Cambodia', '/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('UA Clone Magnetico Pro 2 FG Soccer Cleats', '/Asignment_WAD/productDetails/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats.php', 
'Footwear', 'Football', 'Under Armour', '794.25', '', "The UA Clone Pro 2.0 cleat adapts to your foot's shape and movements for a customized fit and locked-in feel. 
Maximize every touch for total control on the pitch.", 'Combination of bladed & round, conical studs for optimum traction',
'Form-fitting toe box is incredibly soft for unmatched touch & feel', 'Style: DV1239-134', 'Country/Region of Origin: Cambodia', 
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Harden Vol. 6 Shoes', '/Asignment_WAD/productDetails/Footwear/Basketball/Adidas/HardenVol6Shoes.php', 
'Footwear', 'Basketball', 'Adidas', '439.00', '', "Strike when your opponent least expects it. Drive to the rim, pull up from deep and 
leave defenders in your wake — just like James Harden. A Boost midsole provides the energy return you need, from the opening whistle to 
those gruelling last seconds of overtime. Bands on the forefoot and heel give you a locked-down feel all game long", 'Supportive, locked-down feel',
'Rubber outsole', 'Style: DV1349-121', 'Country/Region of Origin: Vietnam', '/ASIGNMENT_WAD/images/products/Footwear/Basketball/Adidas/HardenVol6Shoes_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Why Not .6 PF', '/Asignment_WAD/productDetails/Footwear/Basketball/Jordan/JordanWhyNot.php', 
'Footwear', 'Basketball', 'Jordan', '669.00', '', "Russell Westbrook's 6th signature shoe is—you guessed it—all about speed. To get you goin' 
as fast as possible, we've wrapped the rubber outsole nearly up to the midsole, so you're not gonna slip when you explode from 0 to 100. Added 
security comes from the interior bootie that keeps you strapped in as you jet across the court. It's all held together by an outer shroud and 
fastened with a zip collar that spells out Russell's signature question: 'Why Not?'", 'Midfoot plate runs through the shoe for added stability.',
'Plush ankle collar foam for added comfort & support', 'Style: DV1249-101', 'Country/Region of Origin: Vietnam', 
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Grade School UA Jet 21 Basketball Shoes', '/Asignment_WAD/productDetails/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21.php', 
'Footwear', 'Basketball', 'Under Armour', '199.00', '', "Locked in and ready for takeoff, the UA Jet is all about performance. An EVA midsole gives you the 
cushioning you need, while the classic leather upper looks great on and off the court.", 'Breathable mesh tongue for strategic ventilation',
'Plush ankle collar foam for added comfort & support', 'Style: DV7012-223', 'Country/Region of Origin: China', 
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Adicolor Classics Trefoil Hoodie', '/Asignment_WAD/productDetails/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie.php', 
'Clothing', 'Hoodie', 'Adidas', '379.00', '', "Since it came onto the scene in the '70s, the Trefoil has been seen on top athletes, 
music legends and revolutionary artists worldwide. This adidas hoodie carries on the legacy with a statement Trefoil logo and classic 
Adicolor style. The classic fit is as cosy as always thanks to soft French terry.", 'Drawcord-adjustable hood','Made with Better Cotton', 
'Style: DV7023-223', 'Country/Region of Origin: China', '/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan x TITAN', '/Asignment_WAD/productDetails/Clothing/Hoodies/Jordan/JordanxTITAN.php', 
'Clothing', 'Hoodie', 'Jordan', '389.00', '', "Here's a hoodie for goin' hard, everyday. Made from soft, lightweight fabric with an all-over 
wash—and co-branded with Jordan and TITAN logos—this sweatshirt is about to be #1 in your line-up.", 'Jordan and TITAN branding',
'Body/Hood Lining: 100% cotton. Rib: 98% cotton/2% elastane.', 'Style: DV7023-262', 'Country/Region of Origin: China', 
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Solo Swoosh', '/Asignment_WAD/productDetails/Clothing/Hoodies/Nike/NikeSoloSwoosh_green.php', 
'Clothing', 'Hoodie', 'Nike', '339.00', 'Green', "Celebrate the power and simplicity of the Swoosh. This warm, brushed-fleece hoodie is made with 
some extra room through the shoulders, chest and body for easy comfort and laid-back, nostalgic style. Thick, stretchy ribbing on the cuffs 
and hem help hold the hoodie in place when you move and seal in your warmth when conditions cool. Our solo Swoosh is embroidered on the left 
chest to keep your look clean and effortless.", 'Warm fleece is brushed for smooth comfort on your skin.', 'Dropped shoulders and a roomy fit 
let you move freely and layer with ease.', 'Style: DX1356-010', 'Country/Region of Origin: Pakistan', '/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Nike Solo Swoosh', '/Asignment_WAD/productDetails/Clothing/Hoodies/Nike/NikeSoloSwoosh_black.php', 
'Clothing', 'Hoodie', 'Nike', '339.00', 'Black', "Celebrate the power and simplicity of the Swoosh. This warm, brushed-fleece hoodie is made with 
some extra room through the shoulders, chest and body for easy comfort and laid-back, nostalgic style. Thick, stretchy ribbing on the cuffs 
and hem help hold the hoodie in place when you move and seal in your warmth when conditions cool. Our solo Swoosh is embroidered on the left 
chest to keep your look clean and effortless.", 'Warm fleece is brushed for smooth comfort on your skin.', 'Dropped shoulders and a roomy fit 
let you move freely and layer with ease.', 'Style: DX1356-010', 'Country/Region of Origin: Pakistan', '/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('UA Rival Fleece Big Logo Hoodie', '/Asignment_WAD/productDetails/Clothing/Hoodies/UnderArmour/UARivalFleeceBigLogoHoodie.php', 
'Clothing', 'Hoodie', 'Under Armour', '199.00', '', "This is your new favorite men's sports hoodie for pretty much everything you do—it's 
light, comfy, and super-soft on the inside.", 'Ultra-soft, mid-weight cotton-blend fleece', 'Brushed interior for extra warmth', 
'Style: DX13128-024', 'Country/Region of Origin: China', '/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Train Essentials Seasonal Training Light Jacket', '/Asignment_WAD/productDetails/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket.php', 'Clothing', 'Jacket', 'Adidas', '289.00', '', "Layer up when the temperature 
starts to drop. This adidas full-zip training jacket features AEROREADY to manage moisture as your activity accelerates. The body and hood 
include mesh lining for breathable comfort. Front zip pockets keep your phone and other essentials close at hand.", 
'Regular fit', 'Mesh body and hood lining', 'Style: DX1338-044', 'Country/Region of Origin: China', '/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_1.png');

INSERT INTO product (name, productLink, categories, subCategories, brands, price, colour, prod_description, prod_attribute1, prod_attribute2,
prod_attribute3, prod_attribute4, imageLink) VALUES ('Jordan Flight MVP', '/Asignment_WAD/productDetails/Clothing/Jackets/Jordan/JordanFlightMVP.php', 
'Clothing', 'Jacket', 'Jordan', '389.00', '', "Rep #23, 23 different ways. Press studs keep the look breezy while a fold-down collar gives you 
that distinction you deserve. The all-over print is the star here—you can't miss it.", 
'The woven fabric is lightweight and durable, and it flexes for ease of movement.', 'The welt pockets securely stow your stuff.', 
'Style: DX9738-045', 'Country/Region of Origin: China', '/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_1.png');

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
image6_link, image7_link) VALUES ('Jordan One Take 4 PF','',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Jordan/JordanOneTake4PF_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Pegasus 40','',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/Nike/NikePegasus40_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('UA Surge 3 Running Shoes','',
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Running/UnderArmour/UASurge3RunningShoes_5.png','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Copa Gloro Firm Ground Boots','',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Adidas/CopaGloroFirmGroundBoots_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Adidas/CopaGloroFirmGroundBoots_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Adidas/CopaGloroFirmGroundBoots_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Adidas/CopaGloroFirmGroundBoots_4.png','','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan 1 TD Mid','',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Jordan/Jordan1TDMid_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Gripknit Phantom GX Elite Dynamic Fit FG','',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/Nike/NikeGripknitPhantomGX_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('UA Clone Magnetico Pro 2 FG Soccer Cleats','',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Football/UnderArmour/UACloneMagneticoPro2FGSoccerCleats_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Harden Vol. 6 Shoes','',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Adidas/HardenVol6Shoes_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Adidas/HardenVol6Shoes_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Adidas/HardenVol6Shoes_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Adidas/HardenVol6Shoes_4.png',
'','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Why Not .6 PF','',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_5.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_6.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/Jordan/JordanWhyNot_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Grade School UA Jet 21 Basketball Shoes','',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_1.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_2.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_3.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_4.png',
'/ASIGNMENT_WAD/images/products/Footwear/Basketball/UnderArmour/GradeSchoolUAJet21_5.png','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Adicolor Classics Trefoil Hoodie','',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_6.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Adidas/AdicolorClassicsTrefoilHoodie_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan x TITAN','',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_6.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Jordan/JordanxTITAN_7.png');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Solo Swoosh','Green',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_5.png','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Nike Solo Swoosh','Black',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_5.png','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('UA Rival Fleece Big Logo Hoodie','',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Hoodies/UnderArmour/RivalFleeceBigLogoHoodie_5.png','','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Train Essentials Seasonal Training Light Jacket','',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Adidas/TrainEssentialsSeasonalTrainingLightJacket_6.png','');

INSERT INTO images (name, colour, image1_link, image2_link, image3_link, image4_link, image5_link, 
image6_link, image7_link) VALUES ('Jordan Flight MVP','',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_1.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_2.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_3.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_4.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_5.png',
'/ASIGNMENT_WAD/images/products/Clothing/Jackets/Jordan/JordanFlightMVP_6.png','');

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





