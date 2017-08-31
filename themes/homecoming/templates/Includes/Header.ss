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
				<% if $SiteConfig.DateRange %><p class="header-date">$SiteConfig.DateRange</p><% end_if %>
			</div>
		</div>
	</div>
	<% include MainNav %>
</header>