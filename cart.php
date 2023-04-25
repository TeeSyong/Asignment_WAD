<!DOCTYPE html>
<html>
    <head>
        <title>Cart Page</title>
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/navigation.css">
        <link rel="stylesheet" href="css/cart.css">
        <link rel="stylesheet" href="css/footer.css">
    </head>
    <body>
        <?php include('includes/header.php'); ?>
        <?php include('includes/navigation.php'); ?>

        <div class="cartPage">
            
        </div>

        <div class="cartPage">
            <form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method ="post">
                <div class="column">
                    <table>
                        <tr>
                            <td>Shipping Info</td>
                        </tr>

                        <tr>
                            <td>Full Name</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="name" placeholder="John M. Doe"></td>
                        </tr>

                        <tr>
                            <td>Email</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="email" placeholder="john@example.com"></td>
                        </tr>

                        <tr>
                            <td>Address</td>
                        </tr>
                        <tr>
                            <td><textarea  name="address" placeholder="No. 57, Lorong Bunga 4, Jalan DH8/1" rows="5" cols="20"></textarea></td>
                        </tr>

                        <tr>
                            <td>City</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="city" placeholder="Kampar"></td>
                        </tr>

                        <tr>
                            <td>State</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="state" placeholder="Perak"></td>
                        </tr>

                        <tr>
                            <td>Postcode</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="postcode" placeholder="43000"></td>
                        </tr>

                        <tr>
                            <td>Contact Number</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="hp" value="(+60 )"></td>
                        </tr>

                    </table>
                    
                </div>

                <div class="column">
                    <table>
                        <tr>
                            <td>Payment Info</td>
                        </tr>

                        <tr>
                            <td><input type="radio" name="paymentType" value="onlineBanking">Onlinle Banking</td>
                        </tr>

                        <tr>
                            <td><input type="radio" name="paymentType" value="tng">TNG eWallet</td>
                        </tr>
                        
                        <tr>
                            <td><input type="radio" name="paymentType" value="card">Credit / Debit Card</td>
                        </tr>

                        <tr>
                            <td>Accepted Cards</td>
                        </tr>
                        <tr>
                            <td>Card Images</td>
                        </tr>

                        <tr>
                            <td>Name on Card</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cardName" placeholder="John More Doe"></td>
                        </tr>

                        <tr>
                            <td>Card Number</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cardNum" placeholder="1111-2222-3333-4444"></td>
                        </tr>

                        <tr>
                            <td>Exp Month/Year</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="exp" placeholder="01/30"></td>
                        </tr>

                        <tr>
                            <td>CVV</td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cvv" placeholder="123"></td>
                        </tr>

                        <tr>
                            <td><input type="submit" name="checkout" value="Checkout" id="checkoutButton"></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>

        <?php 
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                
                $name = $_POST['name'];
                $email = $_POST['email'];
                $address = $_POST['address'];   
                $city = $_POST['city'];
                $state = $_POST['state'];
                $postcode = $_POST['postcode'];
                $hp = $_POST['hp'];   
                $paymentType = $_POST['paymentType']; 
                $cardName = $_POST['cardName']; 
                $cardNum = $_POST['cardNum'];   
                $exp = $_POST['exp']; 
                $cvv = $_POST['cvv'];  

                $conn = mysqli_connect("localhost","root","","move_database");
                if(!$conn){
                    die("Connection Error".mysqli_connect_error($conn));
                }

                $query = "INSERT INTO checkout(name,email,address,city,state,postcode,hp,paymentType,cardName,cardNum,exp,cvv) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

                $stmt = mysqli_prepare($conn, $query);
                mysqli_stmt_bind_param($stmt,"ssssssssssss",
                $name,$email,$address,$city,$state,$postcode,$hp,
                $paymentType,$cardName,$cardNum,$exp,$cvv);
                            
                if(mysqli_stmt_execute($stmt)){
                    ;
                }else{
                    die("Insert Error".mysqli_error($conn));
                }

                mysqli_stmt_close($stmt);
                mysqli_close($conn);
            }
        
        ?>


        <?php include('includes/footer.php'); ?>
    </body>
</html>