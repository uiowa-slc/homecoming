<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
			$Form
			<% with $Category %>
				<div class="event-list">
					<% loop $CalendarEvents %>
						<div class="eventcard py-4">
							<% if $PagePhoto %>
								<a href="$Link" class="eventcard__img">
									<img src="{$PagePhoto.CroppedFocusedImage(400,320).URL}" alt="$Title" loading="lazy">
								</a>
							<% end_if %>
							<div class="eventcard__body">
								<h5 class="eventcard__title">$Title</h5>
								<p class="eventcard__details">

									<% loop DateTimes %>
										$DateRange<br>
										<% if AllDay %>
											<% _t('ALLDAY','All Day') %>
										<% else %>
										<% if StartTime %>
											$TimeRange<br>
											<% end_if %>
										<% end_if %>
									<% end_loop %>

									<!-- Location -->
									<% if $EventLocation %>
										$EventLocation
									<% end_if %>
								</p>

								<% with Event %>
									<p class="eventcard__desc">$Content.LimitCharacters(120)</p>
								<% end_with %>

								<a href="$Link" class="btn btn-warning" aria-label="View event information for $Title">
									<span class="glyphicon glyphicon-circle-arrow-right"></span> View Event Information
								</a>
							</div>
						</div><!-- end .list-item -->



					<% end_loop %>
				</div>
			<% end_with %>
		</div>

		<div class="sidebar">
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>

