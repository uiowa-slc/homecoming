<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<h1 class="page-title">$Title</h1>

			$Content
			$Form

			<ul class="unstyled council-list">
				<% loop $allChildren %>
					<li class="clearfix council-member">
						<% if $CouncilPhoto %>
							<div class="council-img">
								<img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="$CouncilPhoto.SetWidth(200).URL" alt="$Title">
							</div>
						<% end_if %>
						<div class="council-content">
							<h4 class="council-title">$Title <% if $EmailAddress %><a href="mailto:$EmailAddress" class="council-email" title="Email"><span class="glyphicon glyphicon-envelope"><span class="visuallyhidden">Email $Title</span></span></a><% end_if %></h4>
							<% if $Position %><p class="council-pos">$Position</p><% end_if %>
							<div class="council-bio">$Content</div>
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