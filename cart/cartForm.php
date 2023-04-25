<!-- <div class="cartPage">
    
</div> -->
<!DOCTYPE html>
<html>
    <head>
        <title>Cart Page</title>
        <link rel="stylesheet" href="../css/header.css">
        <link rel="stylesheet" href="../css/navigation.css">
        <link rel="stylesheet" href="../css/cart.css">
        <link rel="stylesheet" href="../css/footer.css">
        
    </head>
    <body>
        <div class="cartPage" style="background-image: url('../images/background/background_sports.jpg');">
            <form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method ="POST">
                <div class="column">
                    <table>
                        <tr>
                            <td><h1>Shipping Info</h1></td>
                        </tr>

                        <tr>
                            <td><h2>Full Name</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="name" placeholder="John M. Doe" class="textInput">
                                <span><?php echo $nameErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>Email</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="email" placeholder="john@example.com" class="textInput">
                                <span><?php echo $emailErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>Address</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <textarea  name="address" placeholder="No. 57, Lorong Bunga 4, Jalan DH8/1" rows="5" cols="20" class="textInput"></textarea>
                                <span><?php echo $addErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>City</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="city" placeholder="Kampar" class="textInput">
                                <span><?php echo $cityErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>State</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="state" placeholder="Perak" class="textInput">
                                <span><?php echo $stateErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>Postcode</h2></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="postcode" placeholder="43000" class="textInput">
                                <span><?php echo $postcodeErr; ?></span>
                            </td>
                        </tr>

                        <tr>
                            <td><h2>Contact Number</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="hp" value="(+60) " class="textInput"></td>
                        </tr>

                    </table>
                    
                </div>

                <div class="column">
                    <table>
                        <tr>
                            <td><h1>Payment Info</h1></td>
                        </tr>

                        <tr>
                            <td><h2>Payment Type</h2></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="paymentType" value="onlineBanking" checked>Onlinle Banking</td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="paymentType" value="tng">TNG eWallet</td>
                        </tr>                        
                        <tr>
                            <td><input type="radio" name="paymentType" value="card">Credit / Debit Card</td>
                        </tr>

                        <tr>
                            <td><h2>Accepted Cards</h2></td>
                        </tr>
                        <tr>
                            <td>Card Images</td>
                        </tr>

                        <tr>
                            <td><h2>Name on Card</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cardName" placeholder="John More Doe" class="textInput"></td>
                        </tr>

                        <tr>
                            <td><h2>Card Number</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cardNum" placeholder="1111-2222-3333-4444" class="textInput"></td>
                        </tr>

                        <tr>
                            <td><h2>Exp Month/Year</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="exp" placeholder="01/30" class="textInput"></td>
                        </tr>

                        <tr>
                            <td><h2>CVV</h2></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="cvv" placeholder="123" class="textInput"></td>
                        </tr>

                        <tr>
                            <td rowspan="2" id="buttonLocation"><input type="submit" name="task" value="checkout" id="checkoutButton"></td>
                        </tr>
                    </table>
                    
                </div>
                
            </form>
        </div>
    </body>
</html>
