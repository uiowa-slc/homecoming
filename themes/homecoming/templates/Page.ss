<!DOCTYPE html>
<!--[if lt IE 9]>         <html lang="en" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<% base_tag %>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Student Life Marketing &amp; Design.</title>
<!-- Google Fonts -->
<% include GoogleFonts %>
<!-- CSS -->
<link rel="stylesheet" href="{$ThemeDir}/css/master.css">
<!-- JS -->
<!--[if lt IE 9]>
    <script src="{$ThemeDir}/js/plugins/html5shiv.js"></script>
    <script src="{$ThemeDir}/js/plugins/respond.min.js"></script>
<![endif]-->
</head>

<body>

	<% include Header %>
	
	<div class="hero home-hero">

	</div>
	
	<section role="main" class="main-content">
		$Layout
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

	<% include Sponsors %>
	<% include Footer %>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<!-- <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script> -->
	<script src="{$ThemeDir}/js/plugins-ck.js"></script>
	<script src="{$ThemeDir}/js/main-ck.js"></script>

	<% include GoogleAnalytics %>

</body>
</html>
