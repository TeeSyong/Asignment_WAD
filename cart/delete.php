<!DOCTYPE html>
<html>
    <head>
        <title>Delete Page</title>
    </head>
    <body>
        <?php 
        
        require "../env.php";
        
        //Delete each item 
        if(!isset($_POST['cart_id'])){
            $id = $_POST['cart_id'];
        }

        $conn = mysqli_connect(
            DB_HOST,
            DB_USER,
            DB_PASSWORD,
            DB_DATABASE
        );

        if(!$conn){
            die("Connection Error".mysqli_connect_error());
        }

        $query = "DELETE FROM cart WHERE id=?";

        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt,"i",
            $id);                   

        if(mysqli_stmt_execute($stmt)){
            ;
        }else{
            die("Insert Error".mysqli_error($conn));
        }

        mysqli_stmt_close($stmt);
        mysqli_close($conn);
        
        header("Location:index.php");      
        ?>

    </body>
</html>