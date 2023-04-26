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
        <?php
        require "../env.php";
        include('../includes/header.php');
        include('../includes/navigation.php');

        echo "
        <div>
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
                    <td colspan='5' style='text-align:right;'> <button value='Remove all' id='remove_button'> Remove All </button> </td> 
                </tr>
            ";

            while($row = mysqli_fetch_assoc($result)){
                $data[] =$row;
            }
            
            foreach($data as $row){

                echo "
                    <tr>
                        <td rowspan='2' width='5' height='5'><input type='checkbox' id='checkbox$count' onclick='onCheck($count)'> </td>
                        <td rowspan='2' style='padding:inherit;'> <img width='100%' height='150px' src='../images/products/{$row['link']}' alt='{$row['name']}'> </td>
                        <td>{$row['name']}</td>                            
                        <td rowspan='2'>  
                        <div class='value-button' id='decrease$count' onclick='decreaseValue($count)' value='Decrease Value'>-</div>
                        <input type='number' id='number$count' value='{$row['qtt']}'>
                        <div class='value-button' id='increase$count' onclick='increaseValue($count)' value='Increase Value'>+</div>
                        </td>
                        <td rowspan='2'>RM{$row['price']}</td>
                    </tr>
                    <tr>   
                        <td>{$row['description']}</td>                 
                    </tr>
                    </hr>
                   
                ";
                $count++;
            }
                            
            echo "
            <tr>
                <td colspan='4'>Subtotal </td>
                <td id='total'> </td>
            </tr>

            <tr>
                <td><a href='payment.php'>Proceed to Payment></a></td>
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
            function increaseValue(id) {
                let value = parseInt(document.getElementById('number'+id).value, 10);
                value = isNaN(value) ? 0 : value;
                value++;
                document.getElementById('number'+id).value = value;
            }

            function decreaseValue(id) {
                let value = parseInt(document.getElementById('number'+id).value, 10);
                value = isNaN(value) ? 0 : value;
                value < 1 ? value = 1 : '';
                value--;
                document.getElementById('number'+id).value = value;
            }

            
            var cartArr = [];
            class cart {
            constructor(productId,link, name,description,quantity,price) {
                this.productId= productId;
                this.link = link;
                this.name = name;
                this.description=description;
                this.quantity = quantity;
                this.price = price;
            }
            }

            <?php 
                $results = mysqli_num_rows($result);
                $count=0;
                foreach($data as $row){
                    $productId = htmlspecialchars_decode($row['productId']);
                    $link = htmlspecialchars($row['link']);
                    $description = htmlspecialchars($row['description']);
                    $name = htmlspecialchars($row['name']);
                    $qtt = htmlspecialchars($row['qtt']);
                    $price = $row['price'];
                    echo"
                    var qttId = document.getElementById('number$count');
                    var qttText = qttId.value;
                    var productId = encodeURI('$productId');
                    var link = encodeURI('$link');
                    var name = encodeURI('$name');
                    var description = encodeURI('$description');
                    var qtt = encodeURI(qttText);
                    var price = encodeURI('$price');

                    
                                   
                    var cartObject =new cart(productId,link,name,description,qtt,price);
                    cartArr.push(cartObject);
                    
                    ";
                    $count++;
                }
                
            ?>
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
                console.log(cartArrForPrice);
                computeTotal();


            }
            
            
            function computeTotal() {
                var total=0.00;
                for(let i=0;i<cartArrForPrice.length;i++){
                    
                    total +=cartArrForPrice[i].quantity * cartArrForPrice[i].price;
                    
                }
                var totalID =document.getElementById('total');
                totalID.innerHTML ="RM"+total;
            }

            function getTotal(){

                alert(total);
            }

            // var total=computeTotal($row['qtt'],$row['price'])
            //         var totalID= document.getElementById('total');
            //         totalID.value= total;
        </script>


    </body>
</html>