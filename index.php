<!DOCTYPE html>
<html>

<head>
    <title>Move</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/footer.css">        
</head>

<body>
<!--header with navigation bar-->
<?php include('includes/header.php'); ?>
<?php include('includes/navigation.php'); ?>

<!--video -->
<div id = "myVideo">
    <video autoplay muted>
        <source src="images/home/banner_video.mp4" type="video/mp4">
    </video>
    <div id = "videoWords">
        <h1>MOVE</h1>
        <h3>Move It Will Do It</h3>
        <p></p><!---->
    </div>
</div>
<!--scroll down to start play, stop after play once-->

<!--About-->
<div>
    <h1>About Us</h1>
</div>

<!--shop by category-->
<h1>Our Products</h1>
<div class="flex-container">
    <div>  
        <img class="flex-img" src="images/home/Category-clothing.png" alt="Clothing">
        <div class="middle">
            <a href="#"><div class="text">Clothing</div></a>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear">
        <div class="middle">
            <a href="#"><div class="text">Footwear</div></a>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories">
        <div class="middle">
            <a href="#"><div class="text">Accessories</div></a>
        </div>
    </div>
</div>

<!-- logos-->
<div class="frame">
<div class="slider">
    <div class="slide-track">
        <div class="slide">
            <img class="sliderImg" src="images/home/Adidas-logo.png" alt="Adidas">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/NIKE-logo.png" alt="Nike">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/PUMA-logo.png" alt="Puma">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Reebok-logo.png" alt="Reebok">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/underArmour-logo.png" alt="Under Armour">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Jordan-logo.png" alt="Jordan">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Vans-logo.png" alt="Vans">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/New_Balance-logo.png" alt="New Balance">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Asics-logo.png" alt="Asics">
        </div>

            <!-- Another 9 Images (DOUBLED) -->

        <div class="slide">
            <img class="sliderImg" src="images/home/Adidas-logo.png" alt="Adidas">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/NIKE-logo.png" alt="Nike">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/PUMA-logo.png" alt="Puma">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Reebok-logo.png" alt="Reebok">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/underArmour-logo.png" alt="Under Armour">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Jordan-logo.png" alt="Jordan">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Vans-logo.png" alt="Vans">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/New_Balance-logo.png" alt="New Balance">
        </div>
        <div class="slide">
            <img class="sliderImg" src="images/home/Asics-logo.png" alt="Asics">
        </div>

    </div>

</div>
    </div>

<!--top picks-->

<h1>Top Picks</h1>
<div class="flex-container">
    <div>  
        <img class="flex-img" src="images/home/Category-clothing.png" alt="Clothing">
        <div class="middle">
            <a href="#"><div class="text">Monthly Favourites</div></a>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear">
        <div class="middle">
            <a href="#"><div class="text">Featured Products</div></a>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories">
        <div class="middle">
            <a href="#"><div class="text">2023 Trending</div></a>
        </div>
    </div>
</div>

<!--search-->

<!--sign up/login-->
<div>
    <h3 class="LoginSignUpWords">Sign up now to get early access to latest product</h3>
    <button type="button" class="LoginSignUpButton" onclick="window.open('login.php','_self')">Login</button>
    <button type="button" class="LoginSignUpButton" onclick="window.open('signup.php', '_self')">Sign Up</button>
</div>


<!--footer-->
<?php include('includes/footer.php'); ?>


</body>
</html>