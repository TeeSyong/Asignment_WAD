<?php session_start();
<<<<<<< Updated upstream
require("env.php");
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
=======
/*
$conn = new mysqli('localhost','root','','move_database');
>>>>>>> Stashed changes
if($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
}
$email = $_SESSION['email'];
$sql = "SELECT * FROM users WHERE email='$email'";
$result = $conn -> query($sql) or die($conn->error);
echo "number of rows: " . $result->num_rows;
$row = $result->fetch_assoc();




$data = array();
$count = 0;


$fname = $row['fname'];
$lname = $row['lname'];
$email = $row['email'];
$phone = $row['phone'];

*/
?>
<!DOCTYPE html>
<html>

<head>
    <title>Profile Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet' type="text/css" href='css/profile.css'>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/footer.css">

</head>

<body>
    <?php include('includes/header.php'); ?>
    <?php include('includes/navigation.php'); ?>
    <section class="profile" style="background-image: url('images/background/profilebackground.jpg');">
        <div class="profileHeader">
        </div>
        <div class="container">
            <img class="profile-picture" src="images\icons\profile.png" alt="Profile Picture">
            <h1 class="name"><?php echo $fname." ".$lname?></h1>
            <div class="contact">
                <div class="contact-item">
                    <p class="contact-item__label">Email</p>
                    <p class="contact-item__value"><?php echo $email?></p>
                </div>
                <div class="contact-item">
                    <p class="contact-item__label">Phone</p>
                    <p class="contact-item__value"><?php echo $phone?></p>
                </div>
            </div>
            <a href="logout.php"><input type="button" class="logoutProfile" value="Log out" ></a>
        </div>

    </section>
    <?php include('includes/footer.php'); ?>
</body>

</html>