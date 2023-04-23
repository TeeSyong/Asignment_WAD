<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/navigation.css" />
    <link rel="stylesheet" href="css/signup.css" />
    <link rel="stylesheet" href="css/footer.css" />
  </head>


  <body>
    
    <?php include('includes/header.php'); ?>
    <?php include('includes/navigation.php'); ?>

    <div id="wrapper_container" style="background-image: url('images/background/background_sports.jpg');">

      <div class="wrapper">
        <center>
          <div class="imgcontainer">
            <img src="images/logo/MoveLogo.png" alt="logo" class="logo" width="250px">
          </div>
        </center>

        <h2 style="text-align: center; padding:15px 0 0 0;"><b>Register Your Details</b> </h2>
        <form class="signupform">
          <label for="fname" ><b>First Name</b></label> 
          <input type="text" id="fname" placeholder="First Name" required>
          
          <label for="lname" ><b>Last Name</b></label> 
          <input type="text" id="lname" placeholder="Last Name" required>
          
          <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Email Address" name="email" required>

          <label for="phone"><b>Phone Number</b></label>
          <input type="text" placeholder="Phone Number" name="phone" required> 
    
          <label for="password"><b>Password</b></label>
          <input type="text" id="password" placeholder="Password" name="password" required>

          <label for="password"><b>Confirm Password</b></label>
          <input type="text" id="password" placeholder="Confirm Password" name="password" required>

          <input type="checkbox" required>  I accept the <a href="#" class="link">Terms of Use</a> & <a href="#" class="link">Privacy Policy</a>
          <br><br>

          <input type="submit" value="Sign Up"><br><br>
          
          <p style="text-align: center;">Already have an account? <a href="login.php" class="link">Login here</a></p>
        </form>
      </div>
    </div>
    <?php include('includes/footer.php'); ?>
  </body>
</html>