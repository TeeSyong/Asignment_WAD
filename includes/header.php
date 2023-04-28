<header class="pageHeader">
  <div class="header_container">
  
    <div class="header_center">
      <a href="/ASIGNMENT_WAD/signup.php" class="h_item"><p>Free Shipping For All Malaysian Rewards Member. Join Us Now.</p></a> 
    </div>

    <div class="header_right">
      <div class="header_item2">
        <a href="/ASIGNMENT_WAD/signup.php" class="h_item" id="register">Sign Up</a>
      </div>
      <div class="header_item2">
        <a href="#" class="h_item">|</a>
      </div>
      <div class="header_item2">
        

        <?php
          if(isset($_SESSION['id']) && isset($_SESSION['email']))
            echo '<a href="/ASIGNMENT_WAD/logout.php" class="h_item" id="li">Log out</a>';
          else
            echo '<a href="/ASIGNMENT_WAD/login.php" class="h_item" id="li">Log in</a>';
        ?>
      </div>
    </div>
    
   </div>
</header>