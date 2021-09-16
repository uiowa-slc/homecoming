
<div class="container-xl main-content">
	<div class="content clearfix">
		<div class="article">


			<h1 class="page-title">$Title</h1>

			$Content

			<% if $Action == "show" %>
				<h2>$DateHeader</h2>
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
    					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Official Events</a>
    				</li>
    				<li class="nav-item">
    					<a class="nav-link" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="false">All Events</a>
    				</li>
    			</ul>
    			<div class="tab-content" id="myTabContent">
    				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <% if $EventsByCategory("official") %>
                            <div class="event-list">
                                <% loop $EventsByCategory("official") %>
                                    <% include EventList %>
                                <% end_loop %>
                            </div>
                        <% else %>
                            <p><% _t('NOEVENTS','There are no events') %>.</p>
                        <% end_if %>

    				</div>
    				<div class="tab-pane fade" id="all" role="tabpanel" aria-labelledby="all-tab">
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
