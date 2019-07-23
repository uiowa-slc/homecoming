<% if Pages %>
<nav aria-label="breadcrumb">
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="$Baseref">Home</a>
		</li>
		<% loop Pages %>
			<% if Last %>
				<li class="breadcrumb-item active" aria-current="page">$Title.XML</li>
			<% else %>
				<li class="breadcrumb-item">
					<a href="$Link">$MenuTitle.XML</a>
				</li>
			<% end_if %>
		<% end_loop %>
	</ol>
</nav>
<%-- <div class="container">
	<ol class="breadcrumbs">
		<li class="home">
			<a href="$Baseref">Home</a>
		</li>
		<% loop Pages %>
			<% if Last %>
				<li class="active">$Title.XML</li>
			<% else %>
				<li><a href="$Link">$MenuTitle.XML</a></li>
			<% end_if %>
		<% end_loop %>
	</ol>
</div> --%>
<% end_if %>