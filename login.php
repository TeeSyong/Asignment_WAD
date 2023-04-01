<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/header.css" />
  <link rel="stylesheet" href="css/navigation.css" />
  <link rel="stylesheet" href="css/login.css" />
  <link rel="stylesheet" href="css/footer.css" />
  
</head>
<body >
  <?php include('includes/header.php'); ?>
  <?php include('includes/navigation.php'); ?>

  <div class="img_body">
    
    <div class="loginform_container" >

      <div class="form_imgcontainer">
        <img src="images/logo/Move_logo.png" alt="logo" class="logo" width="350px">
      </div>

      <div class="form_subcontainer">
        <h2 style="text-align: center; padding:20px 0 0 0;"><b>Good to see you again</b> </h2><br>
        <form class="loginform">
          <label for="email"><b>Email</b></label>
          <input type="email" placeholder="Enter Email" name="email" required >
          <label for="password"><b>Password</b></label>
          <span class="show"><input type="checkbox"  onclick="pwVisibility()"> Show Password</span>
          <input type="password" id="password" placeholder="Enter Password" name="password" required>
          <input type="checkbox"> Remember me 
          <br><br>
          <input type="submit" value="Log in">
        </form>
        <p style="padding:40px 0;">
          <a href="signup.php" class="link">Don't have an account?</a>
          <span class="forgetpw"><a href="#" class="link">Forget Password?</a></span>
        </p>
      </div>

    </div>

  </div>

  <script>
    function pwVisibility() {
      var x = document.getElementById("password");
      if (x.type === "password") {
        x.type = "text";
      } else {  
        x.type = "password";
      }
    }
  </script>
  <?php include('includes/footer.php'); ?>

</body>
</html>