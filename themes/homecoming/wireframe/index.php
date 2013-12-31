<!DOCTYPE html>
<!--[if lt IE 9]>         <html lang="en" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Student Life Marketing &amp; Design.</title>
<!-- Google Fonts -->
<?php include 'inc/google-fonts.php'; ?>
<!-- CSS -->
<link rel="stylesheet" href="css/master.css">
<!-- JS -->
<!--[if lt IE 9]>
    <script src="js/plugins/html5shiv.js"></script>
    <script src="js/plugins/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<?php include 'inc/header.php'; ?>
	
	<div class="hero home-hero">

	</div>
	
	<section role="main" class="main-content">
		<div class="container">
			<div class="row">
			  <div class="col-md-9">
			  	<img src="http://placehold.it/800x380&text=photo" alt="" />
			    <p>Curabitur blandit tempus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
			    <div class="row">
						<div class="col-sm-6 col-lg-4 clearfix">
							<h5>Information Packet</h5>
							<img src="http://placehold.it/100x100&text=+" alt="" class="left">
							<p class="small">Duis mollis, est non commodo luctus erat porttitor ligula.</p>
						</div>
						<div class="col-sm-6 col-lg-4 clearfix">
							<h5>Buttons and Shirts</h5>
							<img src="http://placehold.it/100x100&text=+" alt="" class="left">
							<p class="small">Duis mollis, est non commodo luctus erat porttitor ligula.</p>
						</div>
						<div class="col-sm-6 col-lg-4 clearfix">
							<h5>Homecoming Applications</h5>
							<img src="http://placehold.it/100x100&text=+" alt="" class="left">
							<p class="small">Duis mollis, est non commodo luctus erat porttitor ligula.</p>
						</div>
					</div>
			  </div><!-- end .col -->
			  <div class="col-md-3">
			  	<?php include 'inc/events-date.php'; ?>
          <?php include 'inc/announcements.php'; ?>
			</div><!-- end .row -->
	  </div><!-- end .container -->
	</section>

	<section class="todays-events">
		<div class="container container-padding">
			<h3>Today's Events</h3>
			<ul class="unstyled clearfix">
				<li>
						<h4>Event Name Goes Here</h4>
						<a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
						<p>10:00 am - 5:00 pm<br>
						2nd Floor Ballroom, IMU</p>
						<p><a href="#">Learn More</a></p>
				</li>
				<li>
						<h4>Event Name Goes Here</h4>
						<a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
						<p>8:00 pm<br>
						Field House Swimming Pool</p>
						<p><a href="#">Learn More</a></p>
				</li>
				<li>
						<h4>Event Name Goes Here</h4>
						<a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
						<p>8:00 pm<br>
						Field House Swimming Pool</p>
						<p><a href="#">Learn More</a></p>
				</li>
			</ul>
		</div>
	</section>


	<?php include 'inc/sponsors.php'; ?>
	<?php include 'inc/footer.php'; ?>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/plugins/jquery-1.8.0.min.js"><\/script>')</script>
	<script src="js/plugins-ck.js"></script>
	<script src="js/main-ck.js"></script>

	<?php include 'inc/analytics.php'; ?>

</body>
</html>
