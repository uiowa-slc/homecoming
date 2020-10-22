
<% with $Page(schedule) %>
	<% if $UpcomingEvents %>
		<section class="upcoming" aria-label="Upcoming Events">
			<div class="container py-md-5">
				<div class="text-divider">
					<span>Upcoming Events</span>
				</div>
				<ul class="list-unstyled upcoming__list card-deck">
					<% loop $UpcomingEvents.Limit(3) %>
						<li class="card upcoming__card">
							<a href="$Link">
								<img src="{$Event.PagePhoto.FocusFill(400,250).URL}" class="card-img-top" alt="$Title" loading="lazy">
							</a>
							<div class="card-body">
								<h5 class="card-title">$Title <% if $Event.VirtualEventLink %>(Virtual)<% end_if %></h5>
								<p class="text-muted my-0">
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
							</div>
							<div class="card-footer">
                                <a href="$Link" class="btn btn-warning my-1" aria-label="View Details for $Title">View Details</a>
                                <% if $Event.VirtualEventLink %>
                                    <a href="$Event.VirtualEventLink" class="btn btn-primary my-1" target="_blank" rel="noopener norefferer">Join Virtual Event</a>
                                <% end_if %>
							</div>
						</li>
					<% end_loop %>
				</ul>
			</div>
		</section>
	<% end_if %>
<% end_with %>
