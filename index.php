<!DOCTYPE html>
<html>

<head>
    <title>Move - Home Page</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/footer.css">   
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">              
</head>

<body id="homeBody">
<!--header with navigation bar-->
<?php include('includes/header.php'); ?> 
<?php include('includes/navigation.php'); ?>

<!--video -->
<div id = "myVideo" controls>
    <video autoplay muted>
        <source src="images/home/banner_video.mp4" type="video/mp4">
    </video>


    <div id="videoButton">
        <button type="button" class="scrollDownButton" onclick="scrollDown()">
            <span class="material-symbols-outlined">
                keyboard_double_arrow_down
            </span>
        </button>
    </div>

    <div id = "videoWordsHeader">
        <h1>
            "Move It Will Do It"
            <br>
            MOVE 
        </h1>
    </div>    
    <div id = "videoWordsPara">
        <p>
            The ultimate one stop sport shop for the biggest brands
            <br>
            Shop all the exclusive designs that suits your needs!
        </p>
    </div>
</div>

<!--shop by category-->
<h1 class="subtitle">Our Products</h1>
<div class="flex-container" id="scrollTarget">
    <div>  
        <img class="flex-img" src="images/home/Category-clothing.png" alt="Clothing">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">Clothing</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">Footwear</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">Accessories</button>
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

<!--search-->
<div id="searchDiv" style="background-image: url('images/home/searchBgr.jpg');">
    <form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post"> <!-- need form action method? -->
        <h1 id="searchTitle">Find more products?</h1>
        <br>
        <input type="text" name="search" id="search" onkeyup="searchFunc()" placeholder="Enter product keyword to search">
    </form>
</div>
<!-- haven't done javascript & php for search -->
<!-- refer Filter/Search List of w3schools -->

<!--haven't add slider to display products-->
<!--top picks-->
<h1 class="subtitle">What's New</h1>
<div class="flex-container">
    <div>  
        <img class="flex-img" src="images/home/Category-clothing.png" alt="Clothing">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">Monthly Favourites</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">Featured Products</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('#')">2023 Trending</button>
        </div>
    </div>
</div>

<!--sign up/login-->
<div id="LoginSignUpHome" style="background-image: url('images/home/loginSignupBgr.jpg');">
    <h3 id="LoginSignUpWords">Sign up now to get early access to the latest product</h3>
    <div class="buttonFlex">
        <button type="button" class="button hoverButton" onclick="window.open('login.php','_self')">Login</button>
        <button type="button" class="button hoverButton" onclick="window.open('signup.php', '_self')">Sign Up</button>
    </div>
</div>

<button type="button" onclick="topFunction()" id="topBtn">Back to Top</button>

<script>
function scrollDown() {
    var division = document.getElementById("scrollTarget");
    division.scrollIntoView({behavior: "smooth", block: "end", inline: "nearest"});
}

let topButton = document.getElementById("topBtn");

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if(document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        topButton.style.display = "block";
    } else {
        topButton.style.display = "none";
    }
}

function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

</script>

<!--footer-->
<?php include('includes/footer.php'); ?>


</body>
</html>