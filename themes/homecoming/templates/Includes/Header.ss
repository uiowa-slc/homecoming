<!-- Header -->
<header class="header clearfix" role="banner">
	<div class="header-top">
		<div class="container clearfix">
			<h1 class="logo">
				<a href="{$BaseHref}">
					<img src="{$ThemeDir}/images/homecoming-logo.png" alt="Iowa Homecoming">
				</a>
			</h1>
			<div class="audience-wrapper">
				<ul class="audience-nav">
					<li><a href="students/">Students</a></li>
					<li><a href="faculty-and-staff/">Faculty &amp; Staff</a></li>
					<li><a href="alumni-and-friends/">Alumni &amp; Public</a></li>
				</ul>
				<% if $SiteConfig.DateRange %><p class="header-date">$SiteConfig.DateRange</p><% end_if %>
			</div>
		</div>
	</div>
	<% include MainNav %>
</header>