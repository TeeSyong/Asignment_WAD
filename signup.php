<!DOCTYPE html>
<html>
  <head>
    <title>Signup Page</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
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

        <h2 style="text-align: center; padding:15px 0 0 0;"><b>Register Your Details</b></h2><br>
        <form id = "myForm" class="signupform" action="submitSignUp.php" method="post" >
          <label for="fname" ><b>First Name</b></label> 
          <input type="text" id="fname" name= "fname" placeholder="First Name">
          <div id="err_fname"></div><br>

          <label for="lname" ><b>Last Name</b></label> 
          <input type="text" id="lname" name= "lname" placeholder="Last Name">
          <div id="err_lname"></div><br>
          
          <label for="email"><b>Email</b></label>
          <input type="text" id="email" name="email"  placeholder="Email Address">
          <div id="err_email"></div><br>

          <label for="phone"><b>Phone Number</b></label>
          <input type="text" id="phone" name="phone" placeholder="Phone Number [xxx-xxx-xxxx]">
          <div id="err_phone"></div><br>
    
          <label for="password"><b>Password</b></label>
          <input type="text" id="password" name="password" placeholder="Password">
          <div id="err_password"></div><br>

          <label for="cpassword"><b>Confirm Password</b></label>
          <input type="text" id="cpassword" name="cpassword" placeholder="Confirm Password" >
          <div id="err_cpassword"></div><br>

          <input type="checkbox" >  I accept the <a href="#" class="link">Terms of Use</a> & <a href="#" class="link">Privacy Policy</a>
          <br><br>

          <input type="button" value="Sign Up" onclick="check()"><br><br>
          
          <p style="text-align: center;">Already have an account? <a href="login.php" class="link">Login here</a></p>
        </form>
      </div>
    </div>

    <script>
      function check()
      {
        fname = document.getElementById('fname').value;
        lname = document.getElementById('lname').value;
        email = document.getElementById('email').value;
        phone = document.getElementById('phone').value;
        password = document.getElementById('password').value;
        cpassword = document.getElementById('cpassword').value;

        document.getElementById('err_fname').innerHTML= "";
        document.getElementById('err_lname').innerHTML= "";
        document.getElementById('err_email').innerHTML="";
        document.getElementById('err_phone').innerHTML="";
        document.getElementById('err_password').innerHTML="";
        document.getElementById('err_cpassword').innerHTML="";
        

        var a = ValidateEmail(email);
        var b = validatePhone1(phone);
        var c = validatePhone2(phone);
        if (fname.length == 0)
        {
          document.getElementById('err_fname').innerHTML="Please enter your first name";
          document.getElementById('err_fname').style.color = "red";
          return false;
        }
        else if (lname.length == 0)
        {
          document.getElementById('err_lname').innerHTML="Please enter your last name";
          document.getElementById('err_lname').style.color = "red";
          return false;
        }
        else if (email.length == 0)
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
        else if (phone.length == 0)
        {
          document.getElementById('err_phone').innerHTML="Please enter a phone number";
          document.getElementById('err_phone').style.color = "red";
          return false;
        }
        else if (b == false)
        {
          document.getElementById('err_phone').innerHTML="Please enter a valid phone number";
          document.getElementById('err_phone').style.color = "red";
          return false;
        }
        else if (c == false)
        {
          document.getElementById('err_phone').innerHTML="Please number in [XXX-XXX-XXXX] format";
          document.getElementById('err_phone').style.color = "red";
          return false;
        }
        else if (password.length == 0)
        {
          document.getElementById('err_password').innerHTML="Please enter a password";
          document.getElementById('err_password').style.color = "red";
          return false;
        }
        else if (cpassword.length == 0)
        {
          document.getElementById('err_cpassword').innerHTML="Please enter password again";
          document.getElementById('err_cpassword').style.color = "red";
          return false;
        }

        else if (password != cpassword)
        {
          document.getElementById('err_cpassword').innerHTML="Password do not match. Please enter again";
          document.getElementById('err_cpassword').style.color = "red";
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

        function validatePhone1(num) {
          let result =/^(\d+-)*(\d+)$/.test(num);
          if (result) {
                return(true)
            }
            return(false)
        }
        
        function validatePhone2(num) {
            const re = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/g;
            let result = num.match(re);
            if (result) {
                return(true)
            }
            return(false)
        }

        
      }
    </script>
    <?php include('includes/footer.php'); ?>
  </body>
</html>

