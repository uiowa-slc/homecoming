
<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<% if $CurrentAction(show) && Events %>
				<h1 class="page-title">Schedule: $DateHeader</h1>
			<% else %>
				<h1 class="page-title">$Title</h1>
			<% end_if %>
			$Content
			<% if $CurrentAction(show) %>
				<% if Events %>
					<div class="event-list">
						<% loop Events %>
							<% include EventList %>
						<% end_loop %>
					</div>
				<% end_if %>
			<% else %>

				<% if AllEvents %>
					<div class="event-list">
						<% loop AllEvents %>
							<% include EventList %>
						<% end_loop %>
					</div>
				<% else %>
					<p><% _t('NOEVENTS','There are no events') %>.</p>
				<% end_if %>

			<% end_if %>
		</div>

		<div class="sidebar">
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>