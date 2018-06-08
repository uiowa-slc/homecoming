<!-- Navigation -->
<div class="nav-holder">
	<div class="container">
		<nav role="navigation" class="mainnav clearfix hide-print">
			<h2 class="mainnav__title"><a href="/#">Menu <button class="mainnav__expandcollapse"></button></a></h2>
			<ul class="mainnav__list clearfix">
				<% loop Menu(1) %>
					<li class="mainnav__listitem $FirstLast <% if $LinkOrSection = "section" %>mainnav__listitem--active<% end_if %><% if Children %> mainnav__listitem--parent<% end_if %>"><a href="$Link" class="mainnav__anchor <% if Children %>mainnav__anchor--parent<% end_if %>">$MenuTitle</a>
						<% if Children %>
							<ul class="mainnav__sublist">
								<% loop Children %>
									<li class="mainnav__listitem $FirstLast <% if $LinkOrCurrent = "current" %>mainnav__listitem--active<% end_if %>"><a href="$Link" class="mainnav__anchor">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
						<% end_if %>
					</li>
				<% end_loop %>
			</ul>
		</nav>
	</div>
</div>


