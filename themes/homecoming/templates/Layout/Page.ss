<div class="container main-content">
	<div class="content">
		<div class="article">
			<% if $PagePhoto %>
				<img src="$PagePhoto.SetWidth(770).URL" alt="Title">
			<% end_if %>
			<h1 class="page-title text-uppercase">$Title</h1>
			$Content
			$Form
		</div>
		<div class="sidebar">
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs

</div>
