<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>FAQ</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/FAQ.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>

    <?php include('includes/header.php'); ?>
    <?php include('includes/navigation.php'); ?>
    <section class="faq" style="background: url(images/background/faq-background.png);
  background-position:100%;
  background-size:cover;">
        <div class="container">
            <div class="row">
                <div class="faq-wrapper">
                    <div class="faqheader" id='faqheader'>
                        <h1>FAQs</h1>
                    </div>
                    <div class="faq-inner">
                        <div class="faq-item">
                            <h3>
                                Where is my order ?
                                <span class="faq-plus">&plus;</span>
                            </h3>
                            <div class="faq-body">
                                If your order has not arrived by the estimated delivery date we’re here to help.<br><br>
                                Before contacting us it’s worth checking few things first. Check the tracking link we
                                sent in your
                                despatch email to view up to date tracking information.<br><br>
                                Sign into your account to check we have the correct delivery information for your order
                                and that all of
                                your contact details are up to date.<br><br>
                                If you still can’t find your parcel contact our Customer Care team quoting your order
                                number.
                            </div>
                        </div>
                        <hr>
                        <div class="faq-item">
                            <h3>
                                Can i change the size/colour of the item i've ordered ?
                                <span class="faq-plus">&plus;</span>
                            </h3>
                            <div class="faq-body">
                                Once an order's been placed we unable to add or change or amend any products from your
                                order.
                            </div>
                        </div>
                        <hr>
                        <div class="faq-item">
                            <h3>
                                part of my order is missing
                                <span class="faq-plus">&plus;</span>
                            </h3>
                            <div class="faq-body">
                                On occasions we are unable to send all of the items you have ordered. We will send you
                                an email if you
                                are to expect any missing items from your order so please check your mailbox. Some
                                details may also be
                                printed on your despatch note.
                                <br><br>
                                We will refund any payment taken for items not sent.
                                <br><br>
                                If you have not received an email from us or if there is no information on your despatch
                                note, please
                                contact our Customer Care team in Email:customercare@jdsports.my and we will resolve the
                                issue for you
                                as quickly as we can.
                            </div>
                        </div>
                        <hr>
                        <div class="faq-item">
                            <h3>
                                How do i use a promotion code?
                                <span class="faq-plus">&plus;</span>
                            </h3>
                            <div class="faq-body">
                                Most promotions apply automatically at checkout.
                                <br><br>
                                If you have a discount code or promotional code it has to be entered in the box which
                                states ‘Enter Your
                                Promo code', enter your promotion code and click the REDEEM button .
                            </div>
                        </div>
                        <hr>
                        <div class="faq-item">
                            <h3>
                                what patment methods can i use?
                                <span class="faq-plus">&plus;</span>
                            </h3>
                            <div class="faq-body">
                                You can use any of the cards listed below to pay for your order;
                                <br><br>
                                Visa, Mastercard, FPX Online Banking, Paypal, Grabpay, Boost, ShopBack, Alipay and Union
                                Pay
                                <br><br>
                                We take security very seriously so you can rest assure when you enter any of your
                                details they'll be
                                safe with us.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(".faq-plus").on('click', function () {
                $(this).parent().parent().find('.faq-body').slideToggle();
            });
        </script>
    </section>
    <?php include('includes/footer.php'); ?>
</body>

</html>