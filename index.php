<!DOCTYPE html>
<html>

<head>
    <title>Move</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/footer.css">

    <style>
        #myVideo {
            position: fixed;
            right: 50%;
            width: 60%;
            height: 60%;
        }
        
        .frame {
            border: solid 2px;
            border-color: pink;
        }

        body {
            background-color:#f6f6f6; /*uniform with header,  navigation, footer? */
            min-height: 100vh;
            display grid;
            place-items: center;
        }

        .slider {
            height:200px;
            margin: auto;
            position: relative;
            width: 90%;
            display: grid;
            place-items: center;
            overflow: hidden;
        }
        .slide-track {
            display:flex;
            width: calc(200px*18);
            animation: scroll 30s linear infinite;
        }
        .slide-track:hover {
            animation-play-state: paused;
        }

        @keyframes scroll {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(calc(-200px*9));
            }
            
        }
        .slide{
            height: 120px;
            width: 100%;
            display: flex;
            align-items: center;
            padding: 15px;
            perspective:100px;
        }
        .sliderImg {
            width: 100%;
            transition: transform 1s;
        }

        .sliderImg:hover {
            transform: translateZ(20px);
        }

        .slider::before,
        .slider::after{
            background: linear-gradient(to right, rgba(255,255,255,1),0%, rgba(255,255,255,0) 100%);
            content: '';
            height: 100%;
            position: absolute;
            width: 15%;
            z-index: 2;
        }

        .slider::before {
            left: 0;
            top: 0;
        }

        .slider::after {
            right: 0;
            top: 0;
            transform: rotateZ(180deg);
        }

        .flex-container {
            margin-bottom:20px;
            height:530px;
            display:flex;
            flex-flow: row wrap;
            justify-content:center;
        }

        .flex-container > div { 
            border:1px solid black; /*temporary */
            position: relative;

        } 

        .flex-img {
            margin: 30px;
            border-radius:25px;
            position:relative;
            /*opacity:0.6;*/
        }

        .titleInContainer {
            
            color:#bbbcb8;
            font-size:1.6em;
            font-family:"Century Gothic", CenturyGothic, AppleGothic, sans-serif;
            border: 1px solid #bbbcb8;
            

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }  

</style>    
</head>

<body>
<!--header with navigation bar-->
<?php include('includes/header.php'); ?>
<?php include('includes/navigation.php'); ?>

<!--video -->
<!-- <div id = "myVideo">
<video autoplay muted loop>8
    <source src="images/home/banner_video.mp4" type="video/mp4">
</video>
</div>* -->
<!--scroll down to start play, stop after play once-->


<!--shop by category-->
<h1>Shop by Category</h1>
<div class="flex-container">
    
    <div>  
        <a href="#">   <!---->        
            <img class="flex-img" src="images/home/Category-clothing.png" alt="Clothing" height="454" width="380">
        </a>
        <div class="titleInContainer">Clothing</div>
    </div>
    <div>
        <a href="#"><!---->
            <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear" height="454" width="380">
        </a>
        <div class="titleInContainer">Footwear</div>
    </div>
    <div>
        <a href="#"><!---->
            <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories" height="454" width="380">
        </a>
        <div class="titleInContainer">Accessories</div>
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

<!-- JavaScript for adding
    slider for multiple images
    shown at once-->
    

<!--top picks-->
<div class="homeDisplay">
    <h1>Top Picks</h1>
    <div>
        <img> <!---->
        <p>Monthly Favourites</p>
    </div>
    <div>
        <p>Most favourite shoes</p>
    </div>
    <div>
        <p>Trending</p>
    </div>
</div>

<!--MOVE-->
<div>
    <div>M</div>
    <div>O</div>
    <div>V</div>
    <div>E</div>
</div>

<!--sign up/login-->
<div></div>

<!--footer-->
<?php include('includes/footer.php'); ?>


</body>
</html>