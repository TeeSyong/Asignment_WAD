<!DOCTYPE html>
<html>
  <head>
    <title>Product details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/navigation.css" />
    <link rel="stylesheet" href="css/NikeDunk.css" />
    <link rel="stylesheet" href="css/footer.css" />
  </head>
  <body>
  <?php include('includes/header.php'); ?>
  <?php include('includes/navigation.php'); ?>
    <div class="content_wrapper">
      <div class="left-container">
        <div class="row">
          <img src="images/nike/nike1.png" alt="nike1" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="images/nike/nike2.png" alt="nike2" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="images/nike/nike3.png" alt="nike3" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="images/nike/nike4.png" alt="nike4" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
        <div class="row">
          <img src="images/nike/nike5.png" alt="nike5" onclick="clickImage(this);" onmouseover="hoverImage(this);">
        </div>
      </div>
      <div class="middle-container">
        <img id="expandedImg"  src="images/nike/nike1.png">
      </div>

      <div class="right-container">
        <h1 id="product_name">Nike Dunk High Retro</h1>
        <h2 id="product_subname">Men's Shoe</h2>
        <p id="price">RM 1000</p>
        <div class="othercolours">
          <div class="othercolours_row">
            <img src="images/nike/nike3.png" alt="nike3" onclick="location.href = 'index.php';">
          </div>
          <div class="othercolours_row">
            <img src="images/nike/nike4.png" alt="nike4" >
          </div>
          <div class="othercolours_row">
            <img src="images/nike/nike5.png" alt="nike5">
          </div>
        </div>
        <p id="selectsize">Select Size</p>
        <div class="size">
          
            <button type="button" class="size_button">UK 5.5</button>
            <button type="button" class="size_button">UK 6</button>
            <button type="button" class="size_button">UK 6.5</button><br>
            <button type="button" class="size_button">UK 7</button>
            <button type="button" class="size_button">UK 7.5</button>
            <button type="button" class="size_button">UK 8</button><br>
            <button type="button" class="size_button"> UK 8.5</button>
            <button type="button" class="size_button">UK 9</button>
            <button type="button" class="size_button">UK 9.5</button><br>
            <button type="button" class="size_button">UK 10</button>
            <button type="button" class="size_button">UK 10.5</button>
            <button type="button" class="size_button">UK 11</button><br>
            <button type="button" class="size_button">UK 11.5</button>
            <button type="button" class="size_button">UK 12</button>
            <button type="button" class="size_button">UK 12.5</button><br>
          
        </div>
        

        <button type="button" id="addToBag">Add to Bag</button><br>
        <button type="button" id="favourite">Favourite</button>
        <div class="details">
          <p>Created for the hardwood but taken to the streets, the '80s basketball icon returns with perfectly sheened overlays and original university colours. With its classic hoops design, the Nike Dunk High Retro channels '80s vintage back onto the streets while its padded, high-top collar adds an old-school look rooted in comfort.</p>
          <br><br>
          <p>&#x2022 &#160; Foam insole</p>
          <p>&#x2022 &#160; Perforations on the toe</p>
          <p>&#x2022 &#160; Style: DD1399-105</p>
          <p>&#x2022 &#160; Country / Region of Origin: Vietnam, Indonesia</p>
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
              <p>Such a cute shoe, get compliments all the time. It’s a super cute baby pink color</p>
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


    </script>
    <?php include('includes/footer.php'); ?>
  </body>
</html>