<div class="eventcard py-4">
	<a href="$Link" class="eventcard__img">
		<img src="{$Event.PagePhoto.CroppedFocusedImage(400,320).URL}" alt="$Title" loading="lazy">
	</a>
	<div class="eventcard__body">
		<h5 class="eventcard__title"><a href="$Link">$Title <% if $Event.VirtualEventLink %>(Virtual)<% end_if %></a></h5>
		<p class="eventcard__details">
			<!-- Date -->
			<% if $DateRange %>
				$DateRange<br>
			<% end_if %>

			<!-- Time -->
			<% if $TimeRange %>
				<% if AllDay %>
					<% _t('ALLDAY','All Day') %>
					<% else %>
					<% if StartTime %>
						$TimeRange
					<% end_if %>
				<% end_if %>
				<br>
            <% end_if %>
            
			<!-- Location -->
			<% if $Event.EventLocation %>
				$Event.EventLocation
            <% end_if %>

            <!-- Virtual Event URL -->
			<% if $Event.VirtualEventLink %>
                <br><strong>Virtual Event</strong>
			<% end_if %>
		</p>

		<% with Event %>
			<p class="eventcard__desc">$Content.LimitCharacters(120)</p>
		<% end_with %>

		<a href="$Link" class="btn btn-warning my-1" aria-label="View event information for $Title">
			<span class="glyphicon glyphicon-circle-arrow-right"></span> View Event Information
        </a>
        
        <!-- Virtual Event URL -->
        <% if $Event.VirtualEventLink %>
            <a href="$Event.VirtualEventLink" class="btn btn-primary my-1" target="_blank" rel="noopener norefferer">Join Virtual Event</a>
        <% end_if %>
	</div>
</div><!-- end .list-item -->


