<% if Menu(2) %>
<div class="naver">
	<div class="side-navigation">
		<nav class="sec-nav" aria-label="Secondary">
			<ul class="first-level">
				<% with Level(1) %>
					<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>><a href="$Link">$MenuTitle</a></li>
				<% end_with %>
				<% loop Menu(2) %>
					<li <% if $LinkOrCurrent = "current" %>class="active"<% end_if %>>
						<a href="$Link">$MenuTitle</a>
					</li>
				<% end_loop %>

			</ul>
		</nav>
	</div><!-- end .subnavigation -->
</div><!-- end Naver -->
<% end_if %>