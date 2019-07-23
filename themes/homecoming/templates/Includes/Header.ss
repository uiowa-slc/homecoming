<!-- Header -->
<header class="header clearfix" role="banner">
	<div class="header-top">
		<div class="container clearfix">
			<div class="header-container">
				<div class="logo">
					<a href="{$BaseHref}" class="logo__anchor">
						<img src="{$ThemeDir}/images/homecoming-logo-yellow.png" alt="Iowa Homecoming" class="logo__img">
						<h1 class="logo__title text-uppercase">$SiteConfig.Title</h1>
					</a>
				</div>
				<% if $SiteConfig.DateRange %><p class="header-date">$SiteConfig.DateRange</p><% end_if %>
			</div>
		</div>
	</div>
	<% include MainNav %>
</header>