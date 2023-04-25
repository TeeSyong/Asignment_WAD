<?php
    if($_SERVER['REQUEST_METHOD'] === 'POST')
    {
      $email=(trim($_POST['email']));
      $password=MD5(trim($_POST['password']));
      if(empty($email))
      echo "Enter the email";
      else if (empty($password))
      echo "Enter the password";
      else{
        $conn = new mysqli('localhost','root','','move_database');
        if($conn->connect_error){
          die("Connection failed: ". $conn->connect_error);
        }
        $sql="SELECT * FROM users WHERE email='$email' AND password='$password'";
        $result = $conn->query($sql);

        
        if(mysqli_num_rows($result) === 1)
        {
          $row = $result->fetch_assoc();
          if($row['email'] === $email && $row['password'] === $password)
          {
            echo "Logging in...";
            $_SESSION['id'] = $row['id'];
            $_SESSION['email'] = $row['email'];
            header('Location: index.php');
            exit();
          }
          else
          echo "Invalid Email or Password 1";
        }
        else
        {
          echo "<p style='padding:5px 0; text-align: center; color:red;'>
          Incorrect email/password - Please check and retry</p><br>";
        }
      }
    }

  ?>