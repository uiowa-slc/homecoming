<div class="container main-content">
	<div class="content clearfix">

		<div class="article">
			<% if $PagePhoto %>
				<div class="event-img">
					<img src="{$PagePhoto.CroppedImage(738,460).URL}" alt="$Title"  />
				</div>
			<% end_if %>
			<h1 class="page-title">$Title</h1>
			<% with CurrentDate %>
				<p>
				<% if DateRange %>
					<strong>Date:</strong> $DateRange<br>
				<% end_if %>
				<% if StartTime %>
					<strong>Time:</strong> $TimeRange<br>
				<% end_if %>
			<% end_with %>
			<% if EventLocation %>
				<strong>Location:</strong> $EventLocation</p>
			<% end_if %>

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
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div><!-- end .container -->