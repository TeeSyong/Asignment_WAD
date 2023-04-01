<!DOCTYPE html>
<html>

<head>
    <title>Move</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <style>
        #myVideo {
            position: fixed;
            right: 50%;
            width: 60%;
            height: 60%;
        }

        /*.logoImage {
            float: left;
            width: 150px;
            padding: 5px;
        }*/
        /*
        .homeLogo {
            height: 180px;
            width: 70%;
            margin: auto;
            padding: 10px;
            border: 10px solid black; 
            
        }
        */


body {
	align-items: center;
	background: #E3E3E3;
	display: flex;
	height: 100vh;
	justify-content: center;
}

@mixin white-gradient {
	background: linear-gradient(to right,  rgba(255,255,255,1) 0%,rgba(255,255,255,0) 100%);
}

$animationSpeed: 40s;

// Animation
@keyframes scroll {
	0% { transform: translateX(0); }
	100% { transform: translateX(calc(-250px * 7))}
}


// Styling
.slider {
	background: white;
	box-shadow: 0 10px 20px -5px rgba(0, 0, 0, .125);
	height: 100px;
	margin: auto;
	overflow:hidden;
	position: relative;
	width: 960px;
	
	&::before,
	&::after {
		@include white-gradient;
		content: "";
		height: 100px;
		position: absolute;
		width: 200px;
		z-index: 2;
	}
	
	&::after {
		right: 0;
		top: 0;
		transform: rotateZ(180deg);
	}

	&::before {
		left: 0;
		top: 0;
	}
	
	.slide-track {
		animation: scroll $animationSpeed linear infinite;
		display: flex;
		width: calc(250px * 14);
	}
	
	.slide {
		height: 100px;
		width: 250px;
	}
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


<!--shop by category-->-
<div class="homeDisplay">
    <h1>Shop by Category</h1>
    <div>
        <img> <!---->
        Clothing
    </div>
    <div>
        Footwear
    </div>
    <div>
        Accessories
    </div>
</div>

<!--logos-->


<div class="slider">
    <div class="slide-track">
        <div class="slide">
            <img style="width: 96px; height: 57px;" src="images/home/Adidas-logo.png" alt="Adidas">
        </div>
        <div class="slide">
            <img style="width: 100px; height: 35px; " src="images/home/NIKE-logo.png" alt="Nike">
        </div>
        <div class="slide">
            <img style="width: 111px; height: 62px;" src="images/home/PUMA-logo.png" alt="Puma">
        </div>
        <div class="slide">
            <img style="width: 111px; height: 63px;" src="images/home/Reebok-logo.png" alt="Reebok">
        </div>
        <div class="slide">
            <img style="width: 112px; height: 66px;" src="images/home/underArmour-logo.png" alt="Under Armour">
        </div>
        <div class="slide">
            <img style="width: 90px; height: 86px;" src="images/home/Jordan-logo.png" alt="Jordan">
        </div>
        <div class="slide">
            <img style="width: 160px; height: 60px;" src="images/home/Vans-logo.png" alt="Vans">
        </div>
        <div class="slide">
            <img style="width: 128px; height: 47px;" src="images/home/New_Balance-logo.png" alt="New Balance">
        </div>
        <div class="slide">
            <img  style="width: 128px; height: 45px;" src="images/home/Asics-logo.png" alt="Asics">
        </div>
    </div>
</div>

   


<!--
<div class="homeLogo">
    <div class="logoImage">
        <img style="width: 96px; height: 57px;" src="images/home/Adidas-logo.png" alt="Adidas">
    </div>
    <div class="logoImage">
        <img style="width: 100px; height: 35px; " src="images/home/NIKE-logo.png" alt="Nike">
    </div>    
    <div class="logoImage">
        <img style="width: 111px; height: 62px;" src="images/home/PUMA-logo.png" alt="Puma">
    </div> 
    <div class="logoImage">
        <img style="width: 111px; height: 63px;" src="images/home/Reebok-logo.png" alt="Reebok">
    </div> 
    <div class="logoImage">
        <img style="width: 112px; height: 66px;" src="images/home/underArmour-logo.png" alt="Under Armour">
    </div> 
    <div class="logoImage">
        <img style="width: 90px; height: 86px;" src="images/home/Jordan-logo.png" alt="Jordan"> 
    </div> 
    <div class="logoImage">
        <img style="width: 160px; height: 60px;" src="images/home/Vans-logo.png" alt="Vans">
    </div> 
    <div class="logoImage">
        <img style="width: 128px; height: 47px;" src="images/home/New_Balance-logo.png" alt="New Balance">
    </div> 
    <div class="logoImage">
        <img style="width: 128px; height: 45px;" src="images/home/Asics-logo.png" alt="Asics">
    </div> 
</div>
    -->
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