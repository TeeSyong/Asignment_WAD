<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Contact us</title>
    <link rel="icon" type="image/x-icon" href = "images/home/Move_logo_wo_bg.png">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css"
        integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
    <link rel='stylesheet' href='css/contact.css'>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>
    <?php include('includes/header.php'); ?>
    <?php include('includes/navigation.php');

    $nameErr = $emailErr = $messageErr = "";
    $name = $email = $message = "";

    function input_data($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $isValid = true;

        if (empty(trim($_POST["name"]))) {
            $nameErr = "Please fill in your name.";
            $isValid = false;
        } else {
            $name = input_data($_POST["name"]);
            if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
                $nameErr = "Only alphabets and white space are allowed";
                $isValid = false;
            }
        }

        if (empty(trim($_POST["email"]))) {
            $emailErr = "Email is required";
            $isValid = false;
        } else {
            $email = input_data($_POST["email"]);
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $emailErr = "Invalid email format";
                $isValid = false;
            }
        }

        if (trim($_POST['message'] == "")) {
            $messageErr = 'Please enter a description of your subject.<br/><br/>';
            $isValid = false;
        } else {
            $message = input_data($_POST['message']);
        }

        //save to database
        if($isValid) {
            $conn = mysqli_connect("localhost","root","","move_database");
            if(!$conn){
                die("Connection Error".mysqli_connect_error($conn));
            }

            $query = "INSERT INTO contact(name,email,message) VALUES (?,?,?)";

            $stmt = mysqli_prepare($conn, $query);
            mysqli_stmt_bind_param($stmt,"sss",
            $name,$email,$message);
                      
            if(mysqli_stmt_execute($stmt)){
                ;      
            }else{
                die("Insert Error".mysqli_error($conn));     
            }

            mysqli_stmt_close($stmt);
            mysqli_close($conn);
        }
    }
    ?>


    <section class="contact" style="background-image: url('images/background/background1.png');">
        <div class="content">
            <h2> Contact Us</h2>
            <p>Our Customer Care Team are on hand to help, you can contact us:
                <br>
                <br>


        </div>
        <div class="container">
            <div class="contactInfo">
                <div class="box">
                    <div class="icon"><img src="images/contact/map.png" alt="map" class="Contactlogo"></div>
                    <div class="text">
                        <h3>Address</h3>
                        <P> Jln Jasa 19, Taman Medan Pejasa<br>Petaling Jaya<br>Selangor<br>46000<br>Malaysia</p>

                    </div>
                </div>
                <div class="box">
                    <div class="icon"><img src="images/contact/phone2.png" alt="phone" class="Contactlogo"></i></div>
                    <div class="text">
                        <h3>phone</h3>
                        <P> +603 84081066<br>
                    </div>
                </div>
                <div class="box">
                    <div class="icon"><img src="images/contact/mail2.png" alt="email" class="Contactlogo"></i></div>
                    <div class="text">
                        <h3>Email</h3>
                        <P> customercare@move.my<br>
                    </div>
                </div>
            </div>
            <div class="contactForm">
                <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                    <h2>Send Message</h2>
                    <div class="inputBox">
                        <input type="text" id="name" name="name" required="required">
                        <span>Full Name</span>
                    </div>
                    <span class="error">
                        <?php echo $nameErr; ?>
                    </span>
                    <div class="inputBox">
                        <input type="text" id="email" name="email" required="required">
                        <span>Email</span>
                    </div>
                    <span class="error">
                        <?php echo $emailErr; ?>
                    </span>
                    <div class="inputBox">
                        <textarea required="required" id="message" name="message"></textarea>
                        <span>Type Your message</span>
                    </div>
                    <span class="error">
                        <?php echo $messageErr; ?>
                    </span>
                    <div class="inputBox">
                        <input type="submit" name="submit" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </section>

    <?php include('includes/footer.php'); ?>



</body>

</html>