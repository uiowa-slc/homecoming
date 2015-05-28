<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<% if $PagePhoto %>
				<img src="$PagePhoto.URL" alt="$Title">
    		<% end_if %>
			<h1 class="page-title">$Title</h1>
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