<!DOCTYPE html>
<html>
<head>
    <title>Register successfully</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/navigation.css" />
    <link rel="stylesheet" href="css/submit.css" />
    <link rel="stylesheet" href="css/footer.css" />
</head>
<body >
  <?php include('includes/header.php'); ?>
  <?php include('includes/navigation.php'); ?>
    
      
  <div id="wrapper_container" style="background-image: url('images/background/background_sports.jpg');">
    <div class="wrapper" >
      <center>
      <img src="images/background/tick.png" alt="logo" class="logo" width="150px" ><br><br>
      
      <h1 id="t1"><b>Registration success!</b></h1><br>
      <div class="t_container" id="t1">
      
      <p class="p"><b>Your account has been created successfully!</b></p><br>
      <p class="p"><b>Please return to login page to enter your account.</b></p><br>
      <p class="p"><b>We hope you enjoy your purchase.</b></p>

      </div>
      
      <button type="button" id="button"><a href="login.php">Return to Login Page</a></button>
      </center>
    </div>
  </div>

  <?php

  if($_SERVER["REQUEST_METHOD"]==="POST"){
    $fname=htmlspecialchars(trim($_POST['fname']));
    $lname=htmlspecialchars(trim($_POST['lname']));
    $email=htmlspecialchars(trim($_POST['email']));
    $phone=trim($_POST['phone']);
    $password=MD5(trim($_POST['password']));
    $cpassword=MD5(trim($_POST['cpassword']));

    require"env.php";
    $conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);
    if($conn->connect_error){
      die("Connection failed: ". $conn->connect_error);
    }
    $sql="INSERT into users values('','$fname','$lname','$email','$phone','$password','$cpassword')";
    if($conn-> query($sql) === FALSE)
      echo "Error: " . $sql."<br>".$conn->error;
    

    $conn->close();
  }

  ?>

  
  <?php include('includes/footer.php'); ?>

</body>
</html>