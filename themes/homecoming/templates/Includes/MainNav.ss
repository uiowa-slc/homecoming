<div class="nav-holder">
	<div class="container">
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #000;">
			<a class="navbar-brand d-md-none" href="#">Menu</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav w-100 justify-content-between">
					<% loop Menu(1) %>
						<li class="nav-item <% if Children && ClassName != 'Calendar' %>dropdown<% end_if %> <% if $LinkOrSection = 'section' %>active<% end_if %>">
							<a class="nav-link <% if Children && ClassName != 'Calendar' %>dropdown-toggle<% end_if %>" href="$Link" <% if Children && ClassName != 'Calendar' %>id="navbarDropdown$Pos" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"<% end_if %>>$MenuTitle <% if $LinkOrSection = 'section' %><span class="sr-only">(current)</span><% end_if %></a>
							<% if Children && ClassName != 'Calendar' %>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown$Pos">
									<% loop Children %>
										<a class="dropdown-item" href="$Link">$MenuTitle</a>
									<% end_loop %>
								</div>
							<% end_if %>
						</li>
					<% end_loop %>
				</ul>
			</div>
		</nav>
	</div>
</div>

