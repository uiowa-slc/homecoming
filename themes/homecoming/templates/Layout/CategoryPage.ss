<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
			$Form
			<div class="event-list">
				<% loop $Events %>
					<% include EventList %>
				<% end_loop %>
			</div>
		</div>

		<div class="sidebar">
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>

