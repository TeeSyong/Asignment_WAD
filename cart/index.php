<!DOCTYPE html>
<html>
    <head>
        <title>Cart Page</title>
        <link rel="stylesheet" href="../css/header.css">
        <link rel="stylesheet" href="../css/navigation.css">
        <link rel="stylesheet" href="../css/cart.css">
        <link rel="stylesheet" href="../css/footer.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,200,0,0" />
        
    </head>
    <body style="background-image: url(../images/cart/bgrForCart.jpg);">
        <?php
        require "../env.php";
        include('../includes/header.php');
        include('../includes/navigation.php');

        echo "
        <div id='headerDiv'>
            <h1>Shopping Cart</h1><hr>    
        </div>
        ";
        // establish connection
        $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

        $query = "SELECT * FROM cart ORDER BY id ASC";

        $result = mysqli_query($conn, $query);
        $data = array();
        $count = 0;
        if(mysqli_num_rows($result)>0){
            echo "
                <table>
                <tr>
                    <td colspan='6' style='text-align:right;'>
                    <form style='margin:auto;' action='deleteAll.php' method ='POST'>
                    <button value='Remove all' id='remove_button'> Remove All </button>
                    </form>
                    </td> 
                </tr>
            ";

            while($row = mysqli_fetch_assoc($result)){
                $data[] =$row;
            }
            
            foreach($data as $row){

                echo "
                    <tr>
                        <td rowspan='2' width='5' height='5'><input type='checkbox' id='checkbox$count' onclick='onCheck($count)'> </td>
                        <td rowspan='2' style='padding:inherit;'> <img width='100%' height='150px' src='../..{$row['imglink']}' alt='{$row['name']}'> </td>
                        <td class='nameStyle'>{$row['name']}</td>                            
                        <td rowspan='2'> 
                        <form id='addMinus'> 
                        <div class='value-button' id='decrease$count' onclick='decreaseValue($count)' value='Decrease Value'>-</div>
                        <input type='number' class='qttStyle' id='number$count' value='{$row['quantity']}'>
                        <div class='value-button' id='increase$count' onclick='increaseValue($count)' value='Increase Value'>+</div>
                        </form>
                        </td>
                        <td rowspan='2'>RM{$row['price']}</td>
                        <td rowspan='2'>    
                        <form style='margin:auto;' action='delete.php' method ='POST'>
                            <input type='hidden' name='cart_id' value='{$row['productId']}'>
                            <input type='hidden' name='cart_size' value='{$row['size']}'>
                            <button type='submit' class='delete$count' value='Delete'>
                            <span class='material-symbols-outlined'>delete</span>
                            </button>
                        </form>
                        </td>
                    </tr>
                    <tr>   
                        <td class='descriptionStyle'>{$row['colour']} {$row['size']}</td>                 
                    </tr>
                    
                   
                ";
                $count++;
            }
                            
            echo "
            <tr>
                <td colspan='5'>Subtotal </td>
                <td id='total'> RM0 </td>
            </tr>

            <tr>
                 <td colspan='6'>
                 <a href='payment.php'>Proceed to Payment</a>
                </td>
            </tr>
            ";


        }

        echo "
        </table>  
                ";
        //mysqli_close($conn);

        
        include('../includes/footer.php');
        ?>

        <script>
                
            var cartArr = [];
            class cart {
            constructor(productId,link, name,colour,price,size,quantity) {
                this.productId= productId;
                this.link = link;
                this.name = name;
                this.colour=colour;
                this.price = price;
                this.size = size;
                this.quantity = quantity;
            }
            }

            <?php 
                $results = mysqli_num_rows($result);
                $count=0;
                foreach($data as $row){
                    $productId = htmlspecialchars_decode($row['productId']);
                    $link = htmlspecialchars($row['link']);
                    $name = htmlspecialchars($row['name']);
                    $colour = htmlspecialchars($row['colour']);
                    $price = $row['price'];
                    $size = htmlspecialchars($row['size']);
                    $qtt = htmlspecialchars($row['quantity']);
                    echo"
                    var qttId = document.getElementById('number$count');
                    var qttText = qttId.value;
                    var productId = encodeURI('$productId');
                    var link = encodeURI('$link');
                    var name = encodeURI('$name');
                    var colour = encodeURI('$colour');
                    var price = encodeURI('$price');
                    var size = encodeURI('$size');
                    var qtt = encodeURI(qttText);
           
                    var cartObject =new cart(productId,link,name,colour,price,size,qtt);
                    cartArr.push(cartObject);
                    
                    ";
                    $count++;
                }
                
            ?>
         
            function computeTotal() {
                var total=0.00;
                for(let i=0;i<cartArrForPrice.length;i++){
                    
                    total +=cartArrForPrice[i].quantity * cartArrForPrice[i].price;
                    
                }
                var totalID =document.getElementById('total');
                totalID.innerHTML ="RM"+total;
            }

            function increaseValue(count) {
                var checkBox = document.getElementById("checkbox"+count);
                let value = parseInt(document.getElementById('number'+count).value, 10);
                value = isNaN(value) ? 0 : value;
                value++;
                document.getElementById('number'+count).value = value;
                cartArr[count].quantity = value;
                if(checkBox.checked==true){
                    computeTotal();
                }
            }

            function decreaseValue(count) {
                var checkBox = document.getElementById("checkbox"+count);
                let value = parseInt(document.getElementById('number'+count).value, 10);
                value = isNaN(value) ? 0 : value;
                value < 1 ? value = 1 : '';
                value--;
                document.getElementById('number'+count).value = value;
                cartArr[count].quantity = value;
                if(checkBox.checked==true){
                    computeTotal();
                }
            }

            var cartArrForPrice= [];
            function onCheck(count){               
                //Get the checkbox
                var checkBox = document.getElementById("checkbox"+count);
                
                var isEmpty = cartArrForPrice.length==0;
                var sProductId = cartArr[count].productId;

                if (checkBox.checked == true)
                {
                    cartArrForPrice.push(cartArr[count]);
                } 
                else 
                {

                    for(let i=0;i<cartArrForPrice.length;i++)
                    {
                        if(sProductId==cartArrForPrice[i].productId)
                        {
                            cartArrForPrice.splice(i,1)
                        }
                    }
                }
                computeTotal();


            }
        </script>


    </body>
</html>