<div class="container main-content full-width">
	<div class="content clearfix">
		<div class="article">
			<h1 class="page-title">$Title</h1>
			$Content
			$Form

			<ul class="justify button-archive">
			<% loop $Buttons %>
				<li class="justify-item button-item">
					<a href="$Photo.PaddedImage(800,800).URL" class="button-img fancybox" title="$Year" data-fancybox-group="thumb">
						<img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="$Photo.PaddedImage(200,200).URL" alt="$Year Button">
					</a>
					<small class="button-year">$Year</small>
				</li>
				<% end_loop %>
				<li class="justify-item button-item filler"></li>
				<li class="justify-item button-item filler"></li>
				<li class="justify-item button-item filler"></li>
				<li class="justify-item button-item filler"></li>
			</ul>
		</div>
	</div>
	$Breadcrumbs
</div>