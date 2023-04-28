
<?php
session_start();
if(isset($_SESSION['id']) && isset($_SESSION['email']))
{
  header('Location: /ASIGNMENT_WAD/cart/index.php');
}
else
  header('Location: login.php');
?>