
		<% with $Page(schedule) %>

			<% if $EventsToday %>
			<section class="todays-events">
				<div class="container container-padding">
					<h3 class="title"><span>Today's Events</span></h3>
					<ul>
					<% loop $EventsToday %>
						<li class="justify-item">
							<a href="$Link" class="event-img">
								<img src="{$Event.EventImage.SetHeight(250).URL}" alt="$Title">
							</a>
							<h4 class="todays-events-title"><a href="$Link">$Title</a></h4>
							<div class="today-content">
								<p><span class="time">$TimeRange</span><br>$Event.EventLocation</p>
								<!-- <p><a href="$Link">Learn More</a></p> -->
							</div>
						</li>
					<% end_loop %>
					</ul>
				</div>
			</section>

			<% else_if $UpcomingEvents %>
				<section class="todays-events">
					<div class="container container-padding">
						<h3 class="title"><span>Upcoming Events</span></h3>
						<ul class="justify justify-3">
						<% loop $UpcomingEvents.Limit(3) %>
							<li class="justify-item">
								<a href="$Link">
									<div class="today-imgwrapper">
										<img src="{$Event.EventImage.CroppedImage(400,300).URL}" alt="$Title" class="today-img">
									</div>
									<div class="today-content">
										<p class="today-date">$DateRange</p>
										<h4 class="today-title">$Title</h4>
									</div>
								</a>
							</li>
						<% end_loop %>
						</ul>
					</div>
				</section>
			<% else %>

			<% end_if %>

	 <% end_with %>
