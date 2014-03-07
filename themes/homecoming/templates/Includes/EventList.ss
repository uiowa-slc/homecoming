<div class="clearfix list-item">
	<% with $Event %>
		<% if $EventImage %>
			<a href="$Link" class="img">
				<img src="{$EventImage.CroppedImage(200,200).URL}" alt="$Title">
			</a>
		<% end_if %>
	<% end_with %>
	<div class="list-content">
		<h2 class="title"><a href="$Link">$Title</a></h2>
		<p class="meta">
		$DateRange<br>
		<% if AllDay %>
			<% _t('ALLDAY','All Day') %>
			<% else %>
			<% if StartTime %>
				$TimeRange
			<% end_if %>
		<% end_if %>
		<br>
		$Event.EventLocation
		</p>

		<% with Event %>
			<!-- <p class="list-desc">$Content.LimitCharacters(220)</p> -->
		<% end_with %>
		<a href="$Link" class="btn btn-default">View Event Information</a>
	</div>
</div><!-- end .list-item -->


