<div class="container full-image">
	<% if $EventImage %>
		<div class="content-image">
			<img src="{$EventImage.CroppedImage(878,400).URL}" alt="$Title"  />
		</div>
	<% end_if %>
	<div class="content">
		<h1>$Title</h1>
		<% with CurrentDate %>
			<p>
			<% if DateRange %>
				<strong>Date:</strong> $DateRange<br>
			<% end_if %>
			<% if StartTime %>
				<strong>Time:</strong> $TimeRange<br>
			<% end_if %>
			</p>
		<% end_with %>
		<% if EventLocation %>
			<p><strong>Location:</strong> $EventLocation</p>
		<% end_if %>

		$Content

		<% if OtherDates %>
			<div class="event-calendar-other-dates">
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
		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>

	</div>
</div><!-- end .container -->