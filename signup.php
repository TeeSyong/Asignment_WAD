<!DOCTYPE html>
<html>
  <head>

    <style>
      body{
        background-image:url('background_sports.jpg');
        background-attachment:scroll;
        background-size: cover;
        background-size: 100% ;
        opacity:0.95;
      }


      .imgcontainer{
        text-align:center;
      }
      div.signupform{
        border-radius: 7px;
        background-color: white;
        padding: 50px 45px;
        margin: 100px 450px;
        
        
      }

      span.lname{
        float: right;
      }

      input[type=text]{
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
        
      }

      input[type=text]:focus {
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
      
      .link{
        color:blue;
      }
      .link:hover{
        color:blueviolet;
      }

      
    </style>
    
  </head>


  <body>
    
    <?php include('includes/header.php'); ?>
    <?php include('includes/navigation.php'); ?>

    <div class="signupform">
      <div class="imgcontainer">
        <img src="Move_logo.png" alt="logo" class="logo" width="350px">
      </div>

      <h2 style="text-align: center;"><b>Register Your Details</b> </h2>
      <form class="signupform">
        <label for="fname" ><b>First Name</b></label> 
        <input type="text" id="fname" placeholder="First Name" required>
        
        <label for="lname" ><b>Last Name</b></label> 
        <input type="text" id="lname" placeholder="Last Name" required>
        
        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Email" name="email" required>

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
    <?php include('includes/footer.php'); ?>
  </body>
</html>