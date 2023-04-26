<!DOCTYPE html>
<html lang="en">
<head>
    <title>Adidas</title>
    <link rel="icon" type="image/x-icon" href = "../images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,0,0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/header.css">
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/navigation.css">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/ASIGNMENT_WAD/css/product.css">           
</head>
<body>
    
<?php include('../includes/header.php'); ?>
<?php include('../includes/navigation.php'); ?>

<div class="row mt-5 mx-2">
<div clsaa="container-fluid mx-2">
<div class="row">

<?php 
require "../env.php";
$conn = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);

if(!$conn)
{
    die("Connection Error".myslqi_connect_error());
}
$query = "SELECT * FROM product WHERE brands = ? ORDER BY name ASC";

$stmt = mysqli_prepare($conn,$query);

$brands = "underArmour";

mysqli_stmt_bind_param($stmt,"s",$brands);



if(mysqli_stmt_execute($stmt)){
    ;
}else{
    die("Error".mysqli_error()); 
}
$result = mysqli_stmt_get_result($stmt);
foreach($result as $row){
    echo"
    <div class='col-md-3 mb-4'>
    <a href='{$row['productLink']}'>
    <div class='card' >
      <img src='{$row['imageLink']}' class='card-img-top'>
      <div class='card-body'>
        <h5 class='card-title'>{$row['name']}</h5>
        <p class='card-title'>RM{$row['price']}</p>
    
      </div>
    </div>
    </a>
    </div>
    ";
}
?>





</div>
</div>
</div>