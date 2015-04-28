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
				<p class="header-date">Oct. 3 - Oct. 10, 2014</p>
			</div>
		</div>
	</div>
	<!-- Navigation -->
	<div class="nav-holder">
		<div class="container">
			<nav role="navigation" class="nav-main-wrapper clearfix hide-print">
				<h2 class="nav-title"><a href="/#">Menu <span></span></a></h2>
				<ul class="nav-main nav-left clearfix">
					<% loop Menu(1).Limit(4) %>
						<li class="$FirstLast <% if Children %>parent<% end_if %>"><a href="$Link">$MenuTitle</a>
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
				<ul class="nav-main nav-right clearfix">
					<% loop Menu(1).Limit(0,4) %>
						<li class="$FirstLast <% if Children %>parent<% end_if %>"><a href="$Link">$MenuTitle</a>
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