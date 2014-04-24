<div class="clearfix list-item">
	<a href="$Link" class="img">
		<img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="{$Event.PagePhoto.CroppedImage(200,200).URL}" alt="$Title">
	</a>
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

		<a href="$Link" class="btn btn-default"><span class="glyphicon glyphicon-circle-arrow-right"></span> View Event Information</a>
	</div>
</div><!-- end .list-item -->


