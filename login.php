<?php
ob_start();
session_start();
?>

<!DOCTYPE html>
<html>

<head>
  <title>Login Page</title>
  <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
  <link rel="stylesheet" href="css/header.css" />
  <link rel="stylesheet" href="css/navigation.css" />
  <link rel="stylesheet" href="css/login.css" />
  <link rel="stylesheet" href="css/footer.css" />
</head>
<body >
  
  <?php include('includes/header.php'); ?>
  <?php include('includes/navigation.php'); ?>

    <div id="wrapper_container" style="background-image: url('images/background/background_sports.jpg');">

    <div class="wrapper" >
        <center>
        <img src="images/logo/MoveLogo.png" alt="logo" class="logo" width="250px" id="img">
        </center>
        
        <h2 style="text-align: center; padding:20px 0 0 0;"><b>Good to see you again</b> </h2><br>
        <?php include('loginCredential.php'); ?>
        <form class="loginform" id="myForm" action ="login.php" method="post">
          <label for="email" ><b>Email</b></label>
          <input type="email" id="email" placeholder="Enter Email" name="email" >
          <div id="err_email"></div><br>

          <label for="password"><b>Password</b></label>
          <span class="show"><input type="checkbox"  onclick="pwVisibility()"> Show Password</span>
          <input type="password" id="password" placeholder="Enter Password" name="password">
          <div id="err_password"></div><br>

          <input type="checkbox"> Remember me 
          <br><br>
          <input type="button" value="Log in" onclick="check()">
        </form>

        <p style="padding:15px 0;">
          <a href="signup.php" class="link">Don't have an account?</a>
          <span class="forgetpw"><a href="#" class="link">Forget Password?</a></span>
        </p>
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


    function check(){
      email = document.getElementById('email').value;
      password = document.getElementById('password').value;

      document.getElementById('err_email').innerHTML="";
      document.getElementById('err_password').innerHTML="";

      var a = ValidateEmail(email);

      if (email.length == 0)
      {
        document.getElementById('err_email').innerHTML="Please enter an email";
        document.getElementById('err_email').style.color = "red";
        return false;
      }
      else if (a == false)
      {
        document.getElementById('err_email').innerHTML="Please enter a valid email";
        document.getElementById('err_email').style.color = "red";
        return false;
      }
      else if (password.length == 0)
      {
        document.getElementById('err_password').innerHTML="Please enter a password";
        document.getElementById('err_password').style.color = "red";
        return false;
      }
      else
      {
        document.getElementById("myForm").submit();
      }
      function ValidateEmail(mail)
      {
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (mail.match(mailformat))
        {
          return (true)
        }
        return (false)
      }


    }
  </script>
  <?php include('includes/footer.php'); ?>

</body>
</html>

<?php
ob_end_flush();
?>