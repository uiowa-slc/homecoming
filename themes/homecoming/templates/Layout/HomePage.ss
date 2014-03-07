<div class="container main-content">
	<div class="content">
		<div class="article">
			<img src="$HomePhoto.URL" alt="">
			$Content
			$Form
			<div class="row">
				<div class="col-sm-6 col-lg-4 clearfix">
					<h5>$CalloutOne</h5>
					<img src="http://placehold.it/100x100&text=+" alt="" class="left">
					<p class="small">$CalloutOneDesc</p>
				</div>
				<div class="col-sm-6 col-lg-4 clearfix">
					<h5>$CalloutTwo</h5>
					<img src="http://placehold.it/100x100&text=+" alt="" class="left">
					<p class="small">$CalloutTwoDesc</p>
				</div>
				<div class="col-sm-6 col-lg-4 clearfix">
					<h5>$CalloutThree</h5>
					<img src="http://placehold.it/100x100&text=+" alt="" class="left">
					<p class="small">$CalloutThreeDesc</p>
				</div>
			</div>
		</div>



		<div class="sidebar">
			<% include EventsByDate %>
			<% include Announcements %>
		</div>
	</div>
</div><!-- end .container -->