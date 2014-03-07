<div class="container main-content">
	<div class="content">
		<div class="article">
			<h1 class="page-title">$Title</h1>

			$Content
			$Form

			<ul class="unstyled council-list">
				<% loop $allChildren %>
					<li class="clearfix council-member">
						<% if $CouncilPhoto %>
							<div class="council-img">
								<img src="$CouncilPhoto.SetWidth(200).URL" alt="$Title">
							</div>
						<% end_if %>
						<div class="council-content">
							<h4 class="council-title">$Title</h4>
							<% if $Position %><p class="council-pos">$Position</p><% end_if %>
							<% if $EmailAddress %><p class="council-email"><a href="mailto:$EmailAddress">$EmailAddress</a></p><% end_if %>
							<div class="council-bio">$Content</div>
						</div>
					</li>
				<% end_loop %>
			</ul>
		</div>
		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
	$Breadcrumbs
</div>