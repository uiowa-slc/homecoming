<div class="container main-content full-width">
	<div class="content clearfix">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
			$Form

			<ul class="button-archive list-unstyled">
			<% loop $Buttons %>
				<li class="button-item card">
					<a href="$Photo.PaddedImage(800,800).URL" class="button-img" data-caption="$Year" data-fancybox="gallery">
						<img src="$Photo.CroppedImage(240,240).URL" alt="$Year Button" loading="lazy">
					</a>
					<div class="card-body">
						<p class="card-text">$Year</p>
					</div>
				</li>
				<% end_loop %>
			</ul>
		</div>
	</div>
	$Breadcrumbs
</div>
