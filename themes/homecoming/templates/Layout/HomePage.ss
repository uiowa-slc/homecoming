<div class="container-xl main-content">
	<div class="content clearfix">
		<div class="article">
			<% if $HomePhoto %>
				<img src="$HomePhoto.SetWidth(770).URL" alt="">
			<% end_if %>

			$Content
			$Form
			<% if $CalloutOne || $CalloutTwo || $CalloutThree %>
				<div class="row">
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutOneTree.Link">$CalloutOne</a></h5>
							<a href="$CalloutOneTree.Link">
								<img src="$CalloutOnePhoto.CroppedFocusedImage(100,100).URL" alt="$CalloutOne">
							</a>
							<p class="home-callout-content">$CalloutOneDesc</p>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutTwoTree.Link">$CalloutTwo</a></h5>
							<a href="$CalloutTwoTree.Link">
								<img src="$CalloutTwoPhoto.CroppedFocusedImage(100,100).URL" alt="$CalloutTwo">
							</a>
							<p class="home-callout-content">$CalloutTwoDesc</p>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutThreeTree.Link">$CalloutThree</a></h5>
							<a href="$CalloutThreeTree.Link">
								<img src="$CalloutThreePhoto.CroppedFocusedImage(100,100).URL" alt="$CalloutThree">
							</a>
							<p class="home-callout-content">$CalloutThreeDesc</p>
						</div>
					</div>
				</div>
            <% end_if %>
            <div class="row">
                <div class="col">
                    <hr class="my-5" />
                    <h2>Events</h2>
                    <% with $Page(schedule) %>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">All Events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="students-tab" data-toggle="tab" href="#students" role="tab" aria-controls="students" aria-selected="false">For Students</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="alumni-tab" data-toggle="tab" href="#alumni" role="tab" aria-controls="alumni" aria-selected="false">For Alumni</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <% if $AllEvents %>
                                    <div class="event-list">
                                        <% loop $AllEvents %>
                                            <% include EventList %>
                                        <% end_loop %>
                                    </div>
                                <% else %>
                                    <p><% _t('NOEVENTS','There are no events') %>.</p>
                                <% end_if %>
                            </div>
                            <div class="tab-pane fade" id="students" role="tabpanel" aria-labelledby="students-tab">
                                <% if $EventsByCategory("students") %>
                                    <div class="event-list">
                                        <% loop $EventsByCategory("students") %>
                                            <% include EventList %>
                                        <% end_loop %>
                                    </div>
                                <% else %>
                                    <p><% _t('NOEVENTS','There are no events') %>.</p>
                                <% end_if %>
                            </div>
                            <div class="tab-pane fade" id="alumni" role="tabpanel" aria-labelledby="alumni-tab">
                                <% if $EventsByCategory("alumni-friends") %>
                                    <div class="event-list">
                                        <% loop $EventsByCategory("alumni-friends") %>
                                            <% include EventList %>
                                        <% end_loop %>
                                    </div>
                                <% else %>
                                    <p><% _t('NOEVENTS','There are no events') %>.</p>
                                <% end_if %>
                            </div>
                        </div>
                    <% end_with %>
                </div>
            </div>
		</div>
		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
</div><!-- end .container -->