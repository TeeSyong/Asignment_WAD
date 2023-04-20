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
<div id = "myVideo" controls>
    <video autoplay muted>
        <source src="images/home/banner_video.mp4" type="video/mp4">
    </video>
    <div id = "videoWords">
        <h1>MOVE</h1>
        <h1>Move It Will Do It</h1>
        <h1>COMING SOON</h1>
    </div>
</div>

<!--scroll down to start play-->
<!-- <script>
        // Get the video element and its offset top position from the top of the document
    const video = document.getElementById('myVideo');
    const videoOffsetTop = video.offsetTop;

    // Function to check if the video is in the viewport
    function isInViewport() {
        const scrollTop = window.pageYOffset;
        const videoTop = videoOffsetTop - scrollTop;
        const videoBottom = videoTop + video.offsetHeight;
        const viewportTop = scrollTop + window.innerHeight;
        const viewportBottom = scrollTop;

        return (videoTop < viewportTop) && (videoBottom > viewportBottom);
    }

    // Function to play the video when it's in the viewport
    function playVideoOnScroll() {
    if (isInViewport()) {
        video.play();
        // Remove the scroll event listener to prevent the video from playing multiple times
        window.removeEventListener('scroll', playVideoOnScroll());
    }
    }

    // Add the scroll event listener to trigger the video to play
    window.addEventListener('scroll', playVideoOnScroll());

</script> -->

<!--shop by category-->
<h1>Our Products</h1>
<div class="flex-container">
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


<!--top picks-->
<h1>Top Picks</h1>
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

<button onclick="topFunction()" id="topBtn">Back to Top</button>
<script src="js/home.js"></script>

<!--footer-->
<?php include('includes/footer.php'); ?>


</body>
</html>