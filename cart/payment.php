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



















        $nameErr=$emailErr=$addErr=$cityErr=$stateErr=$postcodeErr="";
        
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            
            $task = $_POST['task'];
            if($task === 'checkout') {
                $isValid = true;

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

                //input validation                
                if(empty($name)){
                    $nameErr = "Name is required";
                    $isValid = false;
                }

                if(empty($email)){
                    $emailErr = "Email is required.";
                    $isValid = false;
                } elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                    $emailErr = "Invalid email format.";
                    $isValid = false;
                }
            
                if(empty($address)){
                    $addErr = "Address is required.";
                    $isValid = false;
                }

                if(empty($city)){
                    $cityErr = "City is required.";
                    $isValid = false;
                }

                if(empty($state)){
                    $stateErr = "State is required.";
                    $isValid = false;
                }

                if(empty($postcode)){
                    $postcodeErr = "Postcode is required.";
                    $isValid = false;
                }
                
                if($isValid) {
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
            }
            include("cartForm.php");
        } else {
            include("cartForm.php");
        }
        
        include('../includes/footer.php');
        ?>
        
    </body>
</html>