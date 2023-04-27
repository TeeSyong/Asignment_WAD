<?php
if($_SERVER["REQUEST_METHOD"]==="POST"){
  $link=$_POST['link'];
  $name=$_POST['productName'];
  $colour=$_POST['colour'];
  $price=$_POST['price'];
  $size=$_POST['sizing'];
  $quantity=$_POST['quantity'];
  $productId=$_POST['productId'];


  $conn = new mysqli('localhost','root','','move_database');
  if($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
  }
    $query = "SELECT * FROM cart";   
    $result = mysqli_query($conn, $query);
    $isFound =false;
    while($row = mysqli_fetch_assoc($result)){
        if($productId == $row["productId"] &&$row['size']==$size){
          $isFound=true;
          $quantity+=$row["quantity"];
          mysqli_query($conn,"UPDATE cart SET quantity=$quantity WHERE productId = $productId AND size='$size' ");
        }
    }
     
    if(!$isFound){
      $sql="INSERT into cart values('','$productId','$link','$name','$colour','$price','$size','$quantity')";
      if($conn-> query($sql) === FALSE)
        echo "Error: " . $sql."<br>".$conn->error;
    }

  $conn->close();
}
header("Location:Clothing/Socks/Adidas/AdidasOriginalMid-CutCrewSocks.php");
?>
