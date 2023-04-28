<?php session_start();

$conn = new mysqli('localhost','root','','move_database');
if($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
}
$sql = "SELECT * FROM users WHERE email=".$_SESSION['email'];
$result = $conn-> query($sql);
$row = $result->fetch_assoc();

$fname = $row['fname'];
$lname = $row['lname'];
$email = $row['email'];
$phone = $row['phone'];




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
            <h1 class="name"><? echo $fname." ".$lname?></h1>
            <div class="contact">
                <div class="contact-item">
                    <p class="contact-item__label">Email</p>
                    <p class="contact-item__value"><?echo $email?></p>
                </div>
                <div class="contact-item">
                    <p class="contact-item__label">Phone</p>
                    <p class="contact-item__value"><?echo $phone?></p>
                </div>
                <div class="contact-item">
                    <p class="contact-item__label">Address</p>
                    <p class="contact-item__value">123 bandar Sg long.</p>
                </div>
            </div>
            <a href="logout.php"><input type="button" class="logoutProfile" value="Log out" ></a>
        </div>

    </section>
    <?php include('includes/footer.php'); ?>
</body>

</html>