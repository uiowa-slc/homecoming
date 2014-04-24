<!DOCTYPE html>
<!--[if lt IE 9]>         <html lang="en" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<% base_tag %>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Homecoming 2014</title>
<!--

MMMMMMMM               MMMMMMMM                               DDDDDDDDDDDDD
M:::::::M             M:::::::M                               D::::::::::::DDD
M::::::::M           M::::::::M                               D:::::::::::::::DD
M:::::::::M         M:::::::::M            +++++++            DDD:::::DDDDD:::::D
M::::::::::M       M::::::::::M            +:::::+              D:::::D    D:::::D
M:::::::::::M     M:::::::::::M            +:::::+              D:::::D     D:::::D
M:::::::M::::M   M::::M:::::::M      +++++++:::::+++++++        D:::::D     D:::::D
M::::::M M::::M M::::M M::::::M      +:::::::::::::::::+        D:::::D     D:::::D
M::::::M  M::::M::::M  M::::::M      +:::::::::::::::::+        D:::::D     D:::::D
M::::::M   M:::::::M   M::::::M      +++++++:::::+++++++        D:::::D     D:::::D
M::::::M    M:::::M    M::::::M            +:::::+              D:::::D     D:::::D
M::::::M     MMMMM     M::::::M            +:::::+              D:::::D    D:::::D
M::::::M               M::::::M            +++++++            DDD:::::DDDDD:::::D
M::::::M               M::::::M                               D:::::::::::::::DD
M::::::M               M::::::M                               D::::::::::::DDD
MMMMMMMM               MMMMMMMM                               DDDDDDDDDDDDD

                              http://studentlife.uiowa.edu/md/
-->
<!-- Typekit Fonts -->
<% include Typekit %>
<!-- CSS -->
<link rel="stylesheet" href="{$ThemeDir}/css/master.css">
<!-- JS -->
<!--[if lt IE 9]>
   <script src="{$ThemeDir}/js/plugins/html5shiv.js"></script>
   <script src="{$ThemeDir}/js/plugins/respond.min.js"></script>
<![endif]-->
</head>

<body class="$ClassName">
	<% include DivisionBar %>
	<% include Header %>

	<div class="hero">
		<div class="featuredimage">
			<div class="loader"></div>
			<div class="hero-slider">
				<ul class="slides">
					<li><img src="{$ThemeDir}/images/homecoming_bg4.jpg" alt=""></li>
					<li><img src="{$ThemeDir}/images/homecoming_bg3.jpg" alt=""></li>
				</ul>
			</div>
		</div>
	</div>

	<section role="main" class="main">
		$Layout
	</section>

	<% include TodaysEvents %>

	<% include Sponsors %>
	<% include Footer %>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>
	<script src="division-bar/js/division-bar.js"></script>
	<% include GoogleAnalytics %>

</body>
</html>
