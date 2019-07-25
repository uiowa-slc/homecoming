
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
				<h2>$DateHeader events:</h2>
				<% if Events %>
					<div class="event-list">
						<% loop Events %>
							<% include EventList %>
						<% end_loop %>
					</div>
				<% end_if %>
			<% else %>

			<!-- Nav tabs -->
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">All Events</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="students-tab" data-toggle="tab" href="#students" role="tab" aria-controls="students" aria-selected="false">For Students</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="alumni-tab" data-toggle="tab" href="#alumni" role="tab" aria-controls="alumni" aria-selected="false">For Alumni</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<% if $AllEvents %>
						<div class="event-list">
							<% loop $AllEvents %>
								<% include EventList %>
							<% end_loop %>
						</div>
					<% else %>
						<p><% _t('NOEVENTS','There are no events') %>.</p>
					<% end_if %>
				</div>
				<div class="tab-pane fade" id="students" role="tabpanel" aria-labelledby="students-tab">
					<% if $EventsByCategory("students") %>
						<div class="event-list">
							<% loop $EventsByCategory("students") %>
								<% include EventList_category %>
							<% end_loop %>
						</div>
					<% else %>
						<p><% _t('NOEVENTS','There are no events') %>.</p>
					<% end_if %>
				</div>
				<div class="tab-pane fade" id="alumni" role="tabpanel" aria-labelledby="alumni-tab">
					<% if $EventsByCategory("alumni-friends") %>
						<div class="event-list">
							<% loop $EventsByCategory("alumni-friends") %>
								<% include EventList_category %>
							<% end_loop %>
						</div>
					<% else %>
						<p><% _t('NOEVENTS','There are no events') %>.</p>
					<% end_if %>
				</div>
			</div>

	
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
