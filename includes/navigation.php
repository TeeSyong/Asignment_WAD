<nav class="navbar">
       <div class="navbar_container">
          <div class="navbar_logo">
           <div class="navbar_item1">
             <a href="/ASIGNMENT_WAD/index.php" id="navbar__logo"><img src="/ASIGNMENT_WAD/images/logo/MoveLogo_withoutslogan.png" alt="logo" class="logo" height ="42px" width="130px"></a>
           </div>
         </div>
          <div class="navbar_categories">
           
           <div class="navbar_item2">
             <div class="dropdown">
               <button class="n_item_title" >New & Latest</button>
             </div>
             <div class="dropdown-content">
               <a href="/ASiGNMENT_WAD/product.php?categories=Clothing" class="n_item">Cloths</a>
               <a href="/ASiGNMENT_WAD/product.php?categories=Footwear" class="n_item">Footwear</a>
               <a href="/ASiGNMENT_WAD/product.php?categories=Accessories" class="n_item">Accessories</a>
             </div>
           </div>
           
           <div class="navbar_item2">
             <div class="dropdown">
               <button href="/ASiGNMENT_WAD/product.php?categories=Clothing" class="n_item_title" >Clothing</button>
             </div>
             <div class="dropdown-content">
               <a href="/ASiGNMENT_WAD/product.php?subCategories=T-Shirt" class="n_item">T-Shirts</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Hoodie" class="n_item">Hoodies</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Jacket" class="n_item">Jackets</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Trouser" class="n_item">Trouser & Tights</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Sock" class="n_item">Socks</a>
             </div>
           </div>
            <div class="navbar_item2">
             <div class="dropdown">
               <button href="/ASiGNMENT_WAD/product.php?categories=Footwear" class="n_item_title" >Footwear</button>
             </div>
             <div class="dropdown-content">
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Running" class="n_item">Running</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Basketball" class="n_item">Basketball</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Football" class="n_item">Football</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Gym" class="n_item">Training & Gym</a>
             </div>
           </div>
            <div class="navbar_item2">
             <div class="dropdown">
               <button href="/ASiGNMENT_WAD/product.php?categories=Accessories" class="n_item_title">Accessories</button>
             </div>
             <div class="dropdown-content">
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Accessories" class="n_item">Sports Accessories</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Bags" class="n_item">Bags</a>
               <a href="/ASiGNMENT_WAD/product.php?subCategories=Fashion" class="n_item">Fashion</a>
             </div>
           </div>
            <div class="navbar_item2">
             <div class="dropdown">
               <button href="#" class="n_item_title">Brands</button>
             </div>
             <div class="dropdown-content">
              <form action = "{$SELF}" method="GET" id="brands">
               <a href="/ASiGNMENT_WAD/product.php?brands=Nike" class="n_item">Nike</a>
               <a href="/ASiGNMENT_WAD/product.php?brands=Under Armour" class="n_item">Under Armour</a>
               <a href="/ASiGNMENT_WAD/product.php?brands=Jordan" class="n_item">Jordan</a>
               <a href="/ASiGNMENT_WAD/product.php?brands=Adidas" class="n_item">Adidas</a>
               </form>
             </div>
           </div>
           
         </div>
          <div class="navbar_icons">
           <div class="navbar_item3">
             <a href="/ASIGNMENT_WAD/profile_controller.php" id="login-page"><img src="/ASIGNMENT_WAD/images/icons/user.png"  width="25px"></a>
           </div>
           <div class="navbar_item3">
             <a href="#" id="wishlist-page"><img src="/ASIGNMENT_WAD/images/icons/wishlist-icon.png"  width="25px"></a>
           </div>
           <div class="navbar_item3">
             <a href="/ASIGNMENT_WAD/addToCart_controller.php" id="shopping-bag-page"><img src="/ASIGNMENT_WAD/images/icons/shopping-bag-icon.png"  width="25px"></a>
           </div>
         </div>
         
           
       </div>
 </nav>

<script>

function submit()
{
  document.getElementById("brands").submit();
}


</script>