<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>profile Page</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='css/profile.css'>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/footer.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</head>

<body>
    <?php include("includes/header.php"); 
     include("includes/navigation.php");?>

    <section class="profile">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="profile-links">
                        <img src="profile.png" alt=""><br>
                        <a href="#">About</a></li><br>
                        <a href="#">My Address</a></li><br>
                        <a href="#">Log Out</a></li><br>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mt-custum">
                        <div class="details">
                            <div class="row">
                                <div class="col-8">
                                    First Name
                                </div>
                                <div class="col-4">
                                    test
                                </div>
                            </div>
                        </div>
                        <div class="details">
                            <div class="row">
                                <div class="col-8">
                                    last Name
                                </div>
                                <div class="col-4">
                                    test
                                </div>
                            </div>
                        </div>
                        <div class="details">
                            <div class="row">
                                <div class="col-8">
                                    Email Name
                                </div>
                                <div class="col-4">
                                    test
                                </div>
                            </div>
                        </div>
                        <div class="details">
                            <div class="row">
                                <div class="col-8">
                                    Phone Name
                                </div>
                                <div class="col-4">
                                    test
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php include("includes/footer.php"); ?>
</body>

</html>