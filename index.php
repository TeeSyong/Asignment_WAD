<?php session_start();?>
<!DOCTYPE html>
<html>

<head>
    <title>Move - Home Page</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/navigation.css"/>
    <link rel="stylesheet" href="css/home.css"/>
    <link rel="stylesheet" href="css/footer.css"/>   
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">              
</head>

<body id="homeBody">
<!--header with navigation bar-->
<?php require 'env.php';?>
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
            <button type="button" class="button hoverButton" onclick="window.open('/ASiGNMENT_WAD/product.php?categories=Clothing')">Clothing</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-footwear.jpg" alt="Footwear">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('/ASiGNMENT_WAD/product.php?categories=Footwear')">Footwear</button>
        </div>
    </div>
    <div>
        <img class="flex-img" src="images/home/Category-accessories.png" alt="Accessories">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('/ASiGNMENT_WAD/product.php?categories=Accessories')">Accessories</button>
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
    <h1 id="searchTitle">Find more products?</h1>
    <br>
    <input type="text" name="search" id="search" onkeyup="searchFunction()" placeholder="Enter product name to search">   
</div>

<?php 

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
$query = "SELECT * FROM product ORDER BY id ASC";
$result = mysqli_query($conn, $query);
$productNameArr = array();
if(mysqli_num_rows($result)>0){
    echo "<ul id='searchUL'>";
    while($row = mysqli_fetch_assoc($result)){
        $nameFromDB = $row['name'];
        $productLink = htmlspecialchars($row['productLink']);
        array_push($productNameArr,$nameFromDB);   
        
        echo "<li class='hide'><a href='$productLink'>$nameFromDB</a></li>";
    }
} 
echo"</ul>";

mysqli_close($conn);

?>

<script>
    function searchFunction() {
        let input = document.getElementById('search');
        let filter = input.value.toLowerCase();
        let ul = document.getElementById('searchUL');
        li = ul.getElementsByTagName('li');
        let productLinkID= document.getElementById('hide');
        var text = document.getElementById('search').value;


        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName('a')[0];
            
            txtValue = a.textContent || a.innerText;
            


            if (txtValue.toLowerCase().indexOf(filter) > -1) {
                li[i].style.display = "block";
            }             
            
            else {
                li[i].style.display = "none";
            }

            if(text.length<1){
                li[i].style.display = "none";
                
            }
        }
    }
</script>

<!--brands-->
<h1 class="subtitle">Looking for Brands?</h1>
<div class="flex-container">
    <div>  
        <img class="flex-imgBrands" src="images/home/Nike.png" alt="Nike">  
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('ASiGNMENT_WAD/product.php?brands=Nike')">Nike</button>        
        </div>    
    </div>  

    <div>
        <img class="flex-imgBrands" src="images/home/UnderArmour.png" alt="Under Armour">            
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('ASiGNMENT_WAD/product.php?brands=underArmour')">Under Armour</button>        
        </div>
    </div>

    <div>
        <img class="flex-imgBrands" src="images/home/Jordan.png" alt="Jordan">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('ASiGNMENT_WAD/product.php?brands=Jordan')">Jordan</button>
        </div>
    </div>

    <div>
        <img class="flex-imgBrands" src="images/home/Adidas.png" alt="Adidas">
        <div class="middle">
            <button type="button" class="button hoverButton" onclick="window.open('ASiGNMENT_WAD/product.php?brands=Adidas')">Adidas</button>
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