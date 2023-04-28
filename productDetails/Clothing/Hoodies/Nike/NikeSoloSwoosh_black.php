<?php
$conn = new mysqli('localhost', 'root','','move_database');
if ($conn->connect_error){
  die("Connection failed: " . $conn->connect_error);
}
$sql="SELECT * FROM product WHERE name='Nike Solo Swoosh' AND colour ='Black'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
if($row === FALSE)
  echo "Error for product Table: ". $sql."<br>".$conn->error;

$sql="SELECT * FROM images WHERE name='Nike Solo Swoosh' AND colour ='Black'";
$resultImage = $conn->query($sql);
$rowImage = $resultImage->fetch_assoc();
if($rowImage === FALSE)
  echo "Error for images Table: ". $sql."<br>".$conn->error;
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
  <?php include('../../../../includes/header.php'); ?>
  <?php include('../../../../includes/navigation.php'); ?>
    <div class="content_wrapper">
      <div class="left-container">
        <div class="row">
          <img src="<?php echo $rowImage['image1_link'];?>" alt="<?php echo $rowImage['image1_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="<?php echo $rowImage['image2_link'];?>" alt="<?php echo $rowImage['image2_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="<?php echo $rowImage['image3_link'];?>" alt="<?php echo $rowImage['image3_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="<?php echo $rowImage['image4_link'];?>" alt="<?php echo $rowImage['image4_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="<?php echo $rowImage['image5_link'];?>" alt="<?php echo $rowImage['image5_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="<?php echo $rowImage['image6_link'];?>" alt="<?php echo $rowImage['image6_link'];?>" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
      </div>
      <div class="middle-container">
        <img id="expandedImg"  src="<?php echo $rowImage['image1_link'];?>">
      </div>

      <div class="right-container">
        <h1 id="product_name"><?php echo $row['name'];?></h1>
        <h2 id="product_subname"><?php echo $row['brands'];?></h2>
        <p id="price">RM <?php echo $row['price'];?></p>
        <div class="othercolours">
          <div class="othercolours_row">
            <img src="/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_black_1.png" alt="NikeSoloSwoosh_black_1.png" onclick="location.href = 'NikeSoloSwoosh_black.php';">
          </div>
          <div class="othercolours_row">
            <img src="/ASIGNMENT_WAD/images/products/Clothing/Hoodies/Nike/NikeSoloSwoosh_green_1.png" alt="NikeSoloSwoosh_green_1.png" onclick="location.href = 'NikeSoloSwoosh_green.php';">
          </div>
        </div>
        <p id="selectsize">Select Size</p>
        <form action="../../../addCart.php" method="post" id="myForm">

        <input type="hidden" name="link" value="<?php echo $row['productLink'];?>">
        <input type="hidden" name="imagelink" value="<?php echo $rowImage['image1_link'];?>">
        <input type="hidden" name="productName" value="<?php echo $row['name'];?>">
        <input type="hidden" name="colour" value="<?php echo $row['colour'];?>">
        <input type="hidden" name="price" value="<?php echo $row['price'];?>">
        <input type="hidden" name="productId" value="<?php echo $row['id'];?>">

        <div class="size">
            <button type="button" id="sizing1" onclick="size1()" >XS</button>
            <button type="button" id="sizing2" onclick="size2()" >S</button>
            <button type="button" id="sizing3" onclick="size3()" >M</button><br>
            <button type="button" id="sizing4" onclick="size4()" >L</button>
            <button type="button" id="sizing5" onclick="size5()" >XL</button>
            <button type="button" id="sizing6" onclick="size6()" >XXL</button><br>
          
        </div>
        <br><div id="err_size"></div><br>
        <input type="hidden" id="size_id" name="sizing" value="">
        
        <div class="counter">
          <span class="down" onClick='decreaseCount(event, this)'>&#8211;</span>
          <input type="text" name="quantity" value="1">
          <span class="up"  onClick='increaseCount(event, this)'>+</span>
        </div>
        

        <button type="button" id="addToBag" onclick="check()">Add to Bag</button><br>
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
            <h1 class="reviewTitle">LOVE IT !!!</h1><br>
            
            <div class="reviewDetails">
              
              <div>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
              </div>
              <div>
                <p class="review_Username_Date">SaraleeG109025694 - 07 Dec 2022</p><br>
                <br>
              </div>

            </div>

            <div class="reviewDescription">
              <p>Size and fit as described. Good quality material. Product was shipped promptly and the price was good.</p>
            </div>
            <br><br>
            <br>
            <h1 class="reviewTitle">Still the GOAT</h1><br>
            
            <div class="reviewDetails">
              
              <div>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
                <span class="fa fa-star" style="font-size:30px"></span>
              </div>
              <div>
                <p class="review_Username_Date">LydiaTT - 26 Nov 2022</p><br>
                <br>
              </div>

            </div>

            <div class="reviewDescription">
              <p>Great quality, nice comfortable fit and a super price</p>
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
    <script>
      function check(){
        quantity = document.getElementById("size_id").value;
        document.getElementById('err_size').innerHTML= "";
        if(quantity == ""){
          document.getElementById('err_size').innerHTML="Please select a size";
          document.getElementById('err_size').style.color = "red";
          document.getElementById('err_size').style.fontSize = "25px";
          document.getElementById('err_size').style.fontFamily = "'Helvetica Neue',Helvetica,Arial,sans-serif";
          return false;
        }
        else
        {
          document.getElementById("myForm").submit();
        }
      }

      function clickImage(imgs){
        var expandImg = document.getElementById("expandedImg");
        expandImg.src = imgs.src;
      }

      function fdr() {
        var x = document.getElementById("myDIV1");
        if (x.style.display === "none") {
          x.style.display = "block";
        } else {
          x.style.display = "none";
        }
      }

      function review() {
        var x = document.getElementById("myDIV2");
        if (x.style.display === "none") {
          x.style.display = "block";
        } else {
          x.style.display = "none";
        }
      }

      function hoverImage(imgs){
        var expandImg = document.getElementById("expandedImg");
        expandImg.src = imgs.src;
      }

      function increaseCount(a, b) {
        var input = b.previousElementSibling;
        var value = parseInt(input.value, 10); 
        value = isNaN(value)? 0 : value;
        value ++;
        input.value = value;
      }
      function decreaseCount(a, b) {
        var input = b.nextElementSibling;
        var value = parseInt(input.value, 10); 
        if (value > 1) {
          value = isNaN(value)? 0 : value;
          value --;
          input.value = value;
        }
      }
    </script>
    <script src="/ASIGNMENT_WAD/script/clothing.js"></script>

    <?php include('../../../../includes/footer.php'); ?>
  </body>
</html>
