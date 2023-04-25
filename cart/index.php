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

        if(mysqli_num_rows($result)>0){
            echo "
                <table>
                <tr>
                    <td> <button value='Remove all' id='remove_button'> Remove All </button> </td> 
                </tr>
            ";

            while($row = mysqli_fetch_assoc($result)){
                echo "
                    <tr>
                        <td rowspan='2'><input type='checkbox' id='checkbox'> </td>
                        <td rowspan='2'>Img</td>
                        <td>{$row['name']}</td>                            
                        <td rowspan='2'>{$row['qtt']}</td>
                        <td rowspan='2'>RM{$row['price']}</td>
                    </tr>
                    <tr>   
                        <td>{$row['description']}</td>                 
                    </tr>
                    </hr>
                ";
            }

            echo "
                </table>
            ";
        }
        
        mysqli_close($conn);

        include('../includes/footer.php');
        ?>
        
    </body>
</html>