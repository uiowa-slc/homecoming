<!doctype html>
<html lang="en" class="no-js">
<head>
    $GlobalAnalytics
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<% base_tag %>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><% if $ClassName == 'HomePage' %>Homecoming at Iowa<% else %>$Title | Homecoming at Iowa<% end_if %></title>

<!-- Typekit Fonts -->
<% include Typekit %>
<!-- CSS -->
<link rel="stylesheet" href="{$ThemeDir}/css/main.css">
</head>

<body class="$ClassName">
	<a id="skiplink" href="#main-content">Skip to main content</a>
	<%-- <% include DivisionBar %> --%>
	<% include UiowaBar %>
	<% include Header %>

	<% if $HeaderPhoto %>
		<div class="hero-wrapper" style="background-image: url($HeaderPhoto.FocusFill(1500,450).URL);"></div>
	<% else %>
		<div class="hero-wrapper" style="background-image: url({$ThemeDir}/images/homecoming_bg.jpg);"></div>
   <% end_if %>

	<main class="main" id="main-content" tabindex="-1" role="main">
		$Layout
	</main>

	<% include UpcomingEvents %>

	<% include Sponsors %>
	<% include Footer %>


	<!-- JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fitvids/1.2.0/jquery.fitvids.min.js" integrity="sha512-/2sZKAsHDmHNoevKR/xsUKe+Bpf692q4tHNQs9VWWz0ujJ9JBM67iFYbIEdfDV9I2BaodgT5MIg/FTUmUv3oyQ==" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>


	$Analytics

</body>
</html>
