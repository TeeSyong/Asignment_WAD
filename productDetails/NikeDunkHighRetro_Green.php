<?php
//Create connection
$conn = new mysqli('localhost', 'root','','move_database');
//Check connection
if ($conn->connect_error){
  die("Connection failed: " . $conn->connect_error);
}
$sql="SELECT * FROM product WHERE name='Nike Dunk High Retro'AND colour='green'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
if($row === FALSE)
  echo "Error: ". $sql."<br>".$conn->error;

?>


    

<!DOCTYPE html>
<html>
  <head>
    <title>Product details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/x-icon" href = "/ASIGNMENT_WAD/images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/header.css" />
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/navigation.css" />
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/productDetail.css" />
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/footer.css" />
  </head>
  <body>
  <?php include('../includes/header.php'); ?>
  <?php include('../includes/navigation.php'); ?>
    <div class="content_wrapper">
      <div class="left-container">
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_1.png" alt="NikeDunkHighRetro_Green_1" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_2.png" alt="NikeDunkHighRetro_Green_2" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_3.png" alt="NikeDunkHighRetro_Green_3" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_4.png" alt="NikeDunkHighRetro_Green_4" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_5.png" alt="NikeDunkHighRetro_Green_5" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_6.png" alt="NikeDunkHighRetro_Green_6" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_7.png" alt="NikeDunkHighRetro_Green_7" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
      </div>
      <div class="middle-container">
        <img id="expandedImg"  src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_1.png">
      </div>

      <div class="right-container">
        <h1 id="product_name"><?php echo $row['name'];?></h1>
        <h2 id="product_subname"><?php echo $row['colour'];?></h2>
        <p id="price"><?php echo $row['price'];?></p>
        <div class="othercolours">
          <div class="othercolours_row">
            <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_BlackWhite_1.png" alt="NikeDunkHighRetro_BlackWhite_1" onclick="location.href = 'NikeDunkHighRetro_BlackWhite.php';">
          </div>
          <div class="othercolours_row">
            <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Orange_1.png" alt="NikeDunkHighRetro_Orange_1" onclick="location.href = 'NikeDunkHighRetro_Orange.php';">
          </div>
          <div class="othercolours_row">
            <img src="/ASIGNMENT_WAD/images/nike/NikeDunkHighRetro_Green_1.png" alt="NikeDunkHighRetro_Green_1" onclick="location.href = 'NikeDunkHighRetro_Green.php';">
          </div>
        </div>
        <p id="selectsize">Select Size</p>
        <form action="NikeDunkHighRetro_Green.php" method="post">
        <input type="hidden" name="link" value="<?php echo $row['productLink'];?>">
        <input type="hidden" name="productName" value="<?php echo $row['name'];?>">
        <input type="hidden" name="colour" value="<?php echo $row['colour'];?>">
        <input type="hidden" name="price" value="<?php echo $row['price'];?>">
        
        <div class="size">
            <button type="button" id="sizing1" onclick="size1()">UK 5.5</button>
            <button type="button" id="sizing2" onclick="size2()" >UK 6</button>
            <button type="button" id="sizing3" onclick="size3()" >UK 6.5</button><br>
            <button type="button" id="sizing4" onclick="size4()" >UK 7</button>
            <button type="button" id="sizing5" onclick="size5()" >UK 7.5</button>
            <button type="button" id="sizing6" onclick="size6()" >UK 8</button><br>
            <button type="button" id="sizing7" onclick="size7()" >UK 8.5</button>
            <button type="button" id="sizing8" onclick="size8()" >UK 9</button>
            <button type="button" id="sizing9" onclick="size9()" >UK 9.5</button><br>
            <button type="button" id="sizing10" onclick="size10()" >UK 10</button>
            <button type="button" id="sizing11" onclick="size11()" >UK 10.5</button>
            <button type="button" id="sizing12" onclick="size12()" >UK 11</button><br>
            <button type="button" id="sizing13" onclick="size13()" >UK 11.5</button>
            <button type="button" id="sizing14" onclick="size14()" >UK 12</button>
            <button type="button" id="sizing15" onclick="size15()" >UK 12.5</button><br>
          
        </div>
        <input type="hidden" id="size_id" name="sizing" value="">
        
        <div class="counter">
          <span class="down" onClick='decreaseCount(event, this)'>&#8211;</span>
          <input type="text" name="quantity" value="1">
          <span class="up"  onClick='increaseCount(event, this)'>+</span>
        </div>
        

        <button type="submit" id="addToBag" >Add to Bag</button><br>
        <button type="button" id="favourite">Favourite</button>
        </form>
        <div class="details">
          <p><?php echo $row['prod_description'];?></p>
          <br><br>
          <p>&#x2022 &#160; <?php echo $row['prod_attribute1'];?></p>
          <p>&#x2022 &#160; <?php echo $row['prod_attribute2'];?></p>
          <p>&#x2022 &#160; <?php echo $row['prod_attribute3'];?></p>
          <p>&#x2022 &#160; <?php echo $row['prod_attribute4'];?></p>
          <br><br><hr><br><br>
          <h1 onclick="fdr()">Free Delivery and Returns</h1>
          <br>
          <div id="myDIV1" style="display:none;">
          <br>
          <p>Your order of RM 400 or more gets free standard delivery.</p>
          <br><br>
          <p>&#x2022 &#160; Standard delivered 2-6 Business Days</p>
          <p>&#x2022 &#160; Express delivered 2-4 Business Days</p>
          <br><br>
          <p>Orders are processed and delivered Monday-Friday (excluding public holidays)</p>

          </div>
          <br><hr><br><br>
          <div class="review" onclick="review()">
            <div>
              <h1 >Review (3)</h1>
            </div>
            <div>
            
              <span style="font-size:35px">4.9 </span>
              <span class="fa fa-star" style="font-size:35px"></span>
              <span class="fa fa-star" style="font-size:35px"></span>
              <span class="fa fa-star" style="font-size:35px"></span>
              <span class="fa fa-star" style="font-size:35px"></span>
              <span class="fa fa-star-half-full" style="font-size:35px"></span>
            
            </div>
          </div>
          <br>
          <div id="myDIV2" style="display:none">
            <br>
            <h1 class="reviewTitle">BEST SHOES EVER !!!</h1><br>
            
            <div class="reviewDetails">
              
              <div>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star-half-full" style="font-size:30px"></span>
              </div>
              <div>
                <p class="review_Username_Date">SaraleeG109025694 - 07 Dec 2022</p><br>
                <br>
              </div>

            </div>

            <div class="reviewDescription">
              <p>When I immediately saw these shoes I really liked the colored! I said I got to purchased these. These were actually my first pair of Nike dunk lows. The comfortability is perfect. Such a comfortable pair of shoes! Recommend to buy.</p>
            </div>
            <br><br>
            <br>
            <h1 class="reviewTitle">Love it</h1><br>
            
            <div class="reviewDetails">
              
              <div>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star-half-full" style="font-size:30px"></span>
              </div>
              <div>
                <p class="review_Username_Date">LydiaTT - 26 Nov 2022</p><br>
                <br>
              </div>

            </div>

            <div class="reviewDescription">
              <p>Such a cute shoe, get compliments all the time. It is a super cute baby pink color</p>
            </div>
            <br><br>
            <br>
            <h1 class="reviewTitle">Triple pink dunks</h1><br>
            
            <div class="reviewDetails">
              
              <div>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star-half-full" style="font-size:30px"></span>
              </div>
              <div>
                <p class="review_Username_Date">ZMajz - 22 Nov 2022</p><br>
                <br>
              </div>

            </div>

            <div class="reviewDescription">
              <p>Came in on time with box and in perfect shape. Was very happy with everything. Was also very quick in shipping</p>
            </div>
            <br><br>

          </div>
          <br><hr><br><br><br><br><br><br>
        </div>

      </div>
      
    </div>

    <script src="../script/prod_details_script.js"></script>
    <?php include('../includes/footer.php'); ?>
  </body>
</html>

<?php
if($_SERVER["REQUEST_METHOD"]==="POST"){
  $link=$_POST['link'];
  $name=$_POST['productName'];
  $colour=$_POST['colour'];
  $price=$_POST['price'];
  $size=$_POST['sizing'];
  $quantity=$_POST['quantity'];

  $conn = new mysqli('localhost','root','','move_database');
  if($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
  }
  $sql="INSERT into cart values('','$link','$name','$colour','$price','$size','$quantity')";
  if($conn-> query($sql) === FALSE)
    echo "Error: " . $sql."<br>".$conn->error;
  

  $conn->close();
}

?>
