<!-- Navigation -->
	<div class="nav-holder">
		<div class="container">
			<nav role="navigation" class="nav-main-wrapper clearfix hide-print">
				<h2 class="nav-title"><a href="/#">Menu <span></span></a></h2>
				<ul class="main-nav nav-left clearfix">
					<% loop Menu(1).Limit(4) %>
						<li class="$FirstLast<% if $LinkOrSection = "section" %> active<% end_if %><% if Children %> parent<% end_if %>"><a href="$Link">$MenuTitle</a>
							<% if Children %>
								<ul>
									<% loop Children %>
										<li class="$FirstLast <% if $LinkOrCurrent = "current" %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
									<% end_loop %>
								</ul>
							<% end_if %>
						</li>
					<% end_loop %>
				</ul>
				<ul class="main-nav nav-right clearfix">
					<% loop Menu(1).Limit(0,4) %>
						<li class="$FirstLast<% if $LinkOrSection = "section" %> active<% end_if %><% if Children %> parent<% end_if %>"><a href="$Link">$MenuTitle</a>
							<% if Children %>
								<ul>
									<% loop Children %>
										<li class="$FirstLast <% if $LinkOrCurrent = "current" %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
									<% end_loop %>
								</ul>
							<% end_if %>
						</li>
					<% end_loop %>
				</ul>
			</nav>
		</div>
	</div>

<!-- <nav role="navigation" class="nav-wrapper no-print" aria-label="Main menu">
	<ul class="main-nav clearfix">
		<% loop Menu(1) %>
			<li class="$FirstLast<% if $LinkOrSection = "section" %> active<% end_if %><% if Children %> parent<% end_if %>"><a href="$Link">$MenuTitle</a>
				<% if Children %>
					<ul>
						<% loop Children %>
							<li class="$FirstLast <% if $LinkOrCurrent = "current" %>active<% end_if %>"><a href="$Link">$MenuTitle</a></li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav> -->


