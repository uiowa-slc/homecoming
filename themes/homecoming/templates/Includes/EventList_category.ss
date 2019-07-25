<div class="eventcard py-4">
	<a href="$Link" class="eventcard__img">
		<img src="{$PagePhoto.CroppedFocusedImage(400,320).URL}" alt="$Title" loading="lazy">
	</a>
	<div class="eventcard__body">
		<h5 class="eventcard__title"><a href="$Link">$Title</a></h5>
		<p class="eventcard__details">
				<% loop $DateTimes %>
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
			<% end_loop %>
			<!-- Location -->
			<% if $EventLocation %>
				$EventLocation
			<% end_if %>
		</p>


			<p class="eventcard__desc">$Content.LimitCharacters(120)</p>


		<a href="$Link" class="btn btn-warning" aria-label="View event information for $Title">
			<span class="glyphicon glyphicon-circle-arrow-right"></span> View Event Information
		</a>
	</div>
</div><!-- end .list-item -->


