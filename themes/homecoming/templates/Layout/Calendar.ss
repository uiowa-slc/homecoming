
<div class="container main-content">
	<div class="content">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
		</div>
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

		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>