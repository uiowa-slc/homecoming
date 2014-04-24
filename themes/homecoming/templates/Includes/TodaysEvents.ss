
		<% with $Page(schedule) %>

			<% if $EventsToday %>
				<section class="todays-events">
					<div class="container container-padding">
						<h3 class="title"><span>Today's Events</span></h3>
						<ul class="justify justify-3">
						<% loop $EventsToday.Limit(3) %>
							<li class="justify-item">
								<a href="$Link">
									<div class="today-imgwrapper">
										<img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="{$Event.PagePhoto.CroppedImage(400,250).URL}" alt="$Title" class="today-img">
									</div>
									<div class="today-content">
										<p class="today-date">$DateRange</p>
										<h4 class="today-title">$Title</h4>
									</div>
								</a>
							</li>
						<% end_loop %>
							<li class="justify-item filler">
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
										<img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="{$Event.PagePhoto.CroppedImage(400,250).URL}" alt="$Title" class="today-img">
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
