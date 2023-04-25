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
        <?php 
        include('includes/header.php');
        include('includes/navigation.php');
        
        $nameErr=$emailErr=$addErr=$cityErr=$stateErr=$postcodeErr="";
        
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            
            $task = S_POST['task'];
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
        include('includes/footer.php');
        ?>
    </body>
</html>