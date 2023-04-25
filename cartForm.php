<!-- <div class="cartPage">
    
</div> -->

<div class="cartPage">
    <form action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method ="POST">
        <div class="column">
            <table>
                <tr>
                    <td><h1>Shipping Info</h1></td>
                </tr>

                <tr>
                    <td>Full Name</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" placeholder="John M. Doe" class="textInput">
                        <span><?php echo $nameErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="email" placeholder="john@example.com" class="textInput">
                        <span><?php echo $emailErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>Address</td>
                </tr>
                <tr>
                    <td>
                        <textarea  name="address" placeholder="No. 57, Lorong Bunga 4, Jalan DH8/1" rows="5" cols="20" class="textInput"></textarea>
                        <span><?php echo $addErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>City</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="city" placeholder="Kampar" class="textInput">
                        <span><?php echo $cityErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>State</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="state" placeholder="Perak" class="textInput">
                        <span><?php echo $stateErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>Postcode</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="postcode" placeholder="43000" class="textInput">
                        <span><?php echo $postcodeErr; ?></span>
                    </td>
                </tr>

                <tr>
                    <td>Contact Number</td>
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
                    <td><input type="radio" name="paymentType" value="onlineBanking" checked>Onlinle Banking</td>
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
                    <td><input type="text" name="cardName" placeholder="John More Doe" class="textInput"></td>
                </tr>

                <tr>
                    <td>Card Number</td>
                </tr>
                <tr>
                    <td><input type="text" name="cardNum" placeholder="1111-2222-3333-4444" class="textInput"></td>
                </tr>

                <tr>
                    <td>Exp Month/Year</td>
                </tr>
                <tr>
                    <td><input type="text" name="exp" placeholder="01/30" class="textInput"></td>
                </tr>

                <tr>
                    <td>CVV</td>
                </tr>
                <tr>
                    <td><input type="text" name="cvv" placeholder="123" class="textInput"></td>
                </tr>

                <tr>
                    <td><input type="submit" name="checkout" value="Checkout" id="checkoutButton"></td>
                </tr>
            </table>
        </div>
    </form>
</div>

