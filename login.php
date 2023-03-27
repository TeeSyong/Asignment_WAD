<!DOCTYPE html>
<html>
<head>
  <style>
    
    body{
      
      background-image:url('background_sports.jpg');
      background-repeat: no-repeat;
      background-attachment: scroll;
      background-size: cover;
      background-size: 100% ;
      opacity:0.95;
     
    }

    .imgcontainer{
      text-align:center;
    }

 
    input[type=email], input[type=password],input[type=text]{
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    input[type=email]:focus, input[type=password]:focus,input[type=text]:focus {
      background-color: #ddd;
      outline: none;
    }

    input[type=submit]
    {
      width:80%;
      padding: 10px 20px;
      margin: 8px 35px;
      border-radius: 15px;
      background-color: rgba(12, 232, 52, 0.811);
      border:rgba(12, 232, 52, 0.811);
      font-size: medium;
      font-family:Arial, Helvetica, sans-serif;
      color: white;
      font-weight: bold;
    }

    input[type=submit]:hover
    {
      background-color: rgba(4, 206, 41, 0.811);
    }

    span.show, span.forgetpw{
      float: right;
    }
    
    div.loginform{
      border-radius: 7px;
      background-color: white;
      padding: 50px 45px;
      margin: 100px 450px;
      
    }

    .link
    {
      color:blue;
    }
    .link:hover
    {
      color:blueviolet;
    }

  </style>
  
</head>
<body>
  
  <?php include('includes/header.php'); ?>
  <?php include('includes/navigation.php'); ?>
  <div class="loginform">
    <div class="imgcontainer">
      <img src="Move_logo.png" alt="logo" class="logo" width="350px">
    </div>
    <h2 style="text-align: center;"><b>Good to see you again</b> </h2>
    <form class="loginform">
      <label for="email"><b>Email</b></label>
      <input type="email" placeholder="Enter Email" name="email" required>
  
      <label for="password"><b>Password</b></label>
      <span class="show"><input type="checkbox"  onclick="pwVisibility()">Show Password</span>
      <input type="password" id="password" placeholder="Enter Password" name="password" required>
      <input type="checkbox">Remember me 
      <br><br>
      <input type="submit" value="Log in">
      
  
    </form>
  
    <p>
      <a href="signup.php" class="link">Don't have an account?</a>
      <span class="forgetpw"><a href="#" class="link">Forget Password?</a></span>
    </p>
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