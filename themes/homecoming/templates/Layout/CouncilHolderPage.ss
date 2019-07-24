<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<h1>$Title</h1>

			$Content
			$Form

			<ul class="list-unstyled council-list">
				<% loop $allChildren %>
					<li class="clearfix council-member">
						<% if $CouncilPhoto %>
							<div class="council-img">
								<img src="$CouncilPhoto.SetWidth(250).URL" alt="$Title">
							</div>
						<% end_if %>
						<div class="council-content">
							<h4 class="council-title">$Title</h4>
							<% if $Position %>
								<p class="council-pos text-muted">$Position</p>
							<% end_if %>
							<div class="council-bio">
								$Content
							</div>
						</div>
					</li>
				<% end_loop %>
			</ul>
		</div>
		<div class="sidebar">
			<% include SideNav %>
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>
