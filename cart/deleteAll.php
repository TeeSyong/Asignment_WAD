<!DOCTYPE html>
<html>
    <head>
        <title>Delete Page</title>    
    </head>
    <body>
        <?php 
        
        require "../env.php";
        
        //Delete each item 

        $conn = mysqli_connect(
            DB_HOST,
            DB_USER,
            DB_PASSWORD,
            DB_DATABASE
        );

        if(!$conn){
            die("Connection Error".mysqli_connect_error());
        }

        $query = "DELETE FROM cart" ;

        $stmt = mysqli_prepare($conn, $query);                 

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