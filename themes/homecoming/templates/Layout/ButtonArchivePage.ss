<div class="container main-content full-width">
	<div class="content">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
			$Form

			<ul class="justify button-archive">
			<% loop $Buttons %>
				<li class="item button-item">
					<a href="$Photo.URL" class="button-img gallery" title="$Year">
						<img src="$Photo.PaddedImage(200,200).URL" alt="$Year">
					</a>
					<small class="button-year">$Year</small>
				</li>
				<% end_loop %>
				<li class="item filler"></li>
				<li class="item filler"></li>
				<li class="item filler"></li>
				<li class="item filler"></li>
			</ul>
		</div>
	</div>
	$Breadcrumbs
</div>