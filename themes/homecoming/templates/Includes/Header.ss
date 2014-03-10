<!-- Header -->
<header class="header clearfix" role="banner">
	<h1 class="logo">
		<a href="{$BaseHref}">
			<img src="{$ThemeDir}/images/homecoming-logo.png" alt="Iowa Homecoming">
		</a>
	</h1>
	<div class="header-top">
		<div class="container clearfix">
			<ul class="audience-nav">
				<li><a href="students/">Students</a></li>
				<li><a href="faculty-and-staff/">Faculty &amp; Staff</a></li>
				<li><a href="alumni-and-friends/">Alumni &amp; Friends</a></li>
			</ul>
			<p class="header-date">Sept. 29 - Oct. 6, 2014</p>
		</div>
	</div>
	<!-- Navigation -->
	<div class="main-nav-wrapper">
		<div class="container">
			<nav role="navigation">
				<h2 class="visuallyhidden">Navigation</h2>
				<ul class="main-nav nav-left clearfix">
					<% loop Menu(1).Limit(4) %>
						<li class="$LinkingMode"><a href="$Link">$MenuTitle</a>
						<% if Children %>
							<ul class="level-2">
							<% loop Children %>
								<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
							</ul>
						<% end_if %>
						</li>
					<% end_loop %>
				</ul>
				<ul class="main-nav nav-right clearfix">
					<% loop Menu(1).Limit(0,4) %>
						<li class="$LinkingMode"><a href="$Link">$MenuTitle</a>
						<% if Children %>
							<ul class="level-2">
							<% loop Children %>
								<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
							</ul>
						<% end_if %>
						</li>
					<% end_loop %>
				</ul>
			</nav>
		</div>
	</div>
</header>