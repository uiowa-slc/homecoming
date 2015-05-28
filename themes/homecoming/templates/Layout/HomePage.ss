<div class="container main-content">
	<div class="content clearfix">
		<div class="article">
			<% if $HomePhoto %><img src="$HomePhoto.URL" alt=""><% end_if %>
			$Content
			$Form
			<% if $CalloutOne || $CalloutTwo || $CalloutThree %>
				<div class="row">
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutOneTree.Link">$CalloutOne</a></h5>
							<a href="$CalloutOneTree.Link">
								<img src="$CalloutOnePhoto.CroppedImage(100,100).URL" alt="$CalloutOne">
							</a>
							<p class="home-callout-content">$CalloutOneDesc</p>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutTwoTree.Link">$CalloutTwo</a></h5>
							<a href="$CalloutTwoTree.Link">
								<img src="$CalloutTwoPhoto.CroppedImage(100,100).URL" alt="$CalloutTwo">
							</a>
							<p class="home-callout-content">$CalloutTwoDesc</p>
						</div>
					</div>
					<div class="col-sm-6 col-lg-4 clearfix">
						<div class="home-callout">
							<h5 class="title"><a href="$CalloutThreeTree.Link">$CalloutThree</a></h5>
							<a href="$CalloutThreeTree.Link">
								<img src="$CalloutThreePhoto.CroppedImage(100,100).URL" alt="$CalloutThree">
							</a>
							<p class="home-callout-content">$CalloutThreeDesc</p>
						</div>
					</div>
				</div>
			<% end_if %>
		</div>
		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
</div><!-- end .container -->