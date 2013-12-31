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


	<% include Sponsors %>
	<% include Footer %>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="{$ThemeDir}/js/plugins/jquery-1.8.0.min.js"><\/script>')</script>
	<script src="{$ThemeDir}/js/plugins-ck.js"></script>
	<script src="{$ThemeDir}/js/main-ck.js"></script>

	<% include GoogleAnalytics %>

</body>
</html>
