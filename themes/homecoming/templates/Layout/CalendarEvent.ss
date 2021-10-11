<div class="container-xl main-content">
	<div class="content clearfix">

		<div class="article">
			<% if $PagePhoto %>
				<div class="event-img float-lg-right mb-lg-3 ml-lg-3">
					<img src="{$PagePhoto.FocusFill(300,300).URL}" alt="$Title" class=""  />
				</div>
            <% end_if %>

            <h1 class="page-title mt-0">
                $Title <% if $VirtualEventLink %>(Virtual)<% end_if %>
            </h1>

            <p>
                <% with CurrentDate %>
                    <% if DateRange %>
                        <strong>Date:</strong> $DateRange<br>
                    <% end_if %>
                    <% if StartTime %>
                        <strong>Time:</strong> $TimeRange<br>
                    <% end_if %>
                <% end_with %>
                <% if EventLocation %>
                    <strong>Location:</strong> $EventLocation
                <% end_if %>
            </p>

             <!-- Virtual Event URL -->
            <% if $VirtualEventLink %>
                <p>
                    <a href="$VirtualEventLink" class="btn btn-primary" target="_blank" rel="noopener norefferer">Join Virtual Event</a>
                </p><br>
            <% end_if %>

            <hr />
			$Content

			<% if OtherDates %>
				<div class="">
					<h4><% _t('CalendarEvent.ADDITIONALDATES','Additional Dates for this Event') %></h4>
					<ul>
						<% loop OtherDates %>
						<li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
						<% end_loop %>
					</ul>
				</div>
			<% end_if %>

			$Form
			$PageComments
		</div>

		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div><!-- end .container -->
