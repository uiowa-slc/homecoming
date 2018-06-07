<!doctype html>
<!--[if lt IE 9]>         <html lang="en" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<% base_tag %>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><% if $ClassName == 'HomePage' %>Homecoming at Iowa<% else %>$Title | Homecoming at Iowa<% end_if %></title>

<!-- Typekit Fonts -->
<% include Typekit %>
<!-- CSS -->
<link rel="stylesheet" href="{$ThemeDir}/css/master.css">
<!-- JS -->
<!--[if lt IE 9]>
   <script src="{$ThemeDir}/js/ie/html5shiv.js"></script>
   <script src="{$ThemeDir}/js/ie/respond.min.js"></script>
<![endif]-->
<!--[if gte IE 9]>
  <style type="text/css">
    .gradient {
       filter: none;
    }
  </style>
<![endif]-->
</head>

<body class="$ClassName">
	<a id="skiplink" href="#main-content">Skip to main content</a>
	<%-- <% include DivisionBar %> --%>
	<% include UiowaBar %>
	<% include Header %>


	<div class="hero-wrapper">
		<img src="{$ThemeDir}/images/homecoming-slide-1.jpg" alt="">
	</div>

	<section class="main" id="main-content" tabindex="-1" role="main">
		$Layout
	</section>

	<% include TodaysEvents %>

	<% include Sponsors %>
	<% include Footer %>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>
	<script src="division-bar/js/division-bar.js"></script>
	$Analytics

</body>
</html>
