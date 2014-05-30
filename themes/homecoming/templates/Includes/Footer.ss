<!-- Footer -->
<footer class="footer clearfix" role="contentinfo">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<a href="http://studentlife.uiowa.edu" class="hide-print"><img class="unveil" src="{$ThemeDir}/images/loader.gif" data-src="{$ThemeDir}/images/dosl-uiowa.png" alt="Division Of Student Life Logo" style="margin-top: -20px;"></a><br>
				<p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p>
				<p>249 Iowa Memorial Union, Iowa City, IA 52242<br>
					Phone: 319-335-3557</p>
			</div>
			<div class="col-sm-4">
				<div class="row">
					<div class="col-xs-6">
						<ul class="footer-nav">
							<% loop Menu(1) %>
								<li><a href="$Link">$MenuTitle</a></li>
							<% end_loop %>
						</ul>
					</div>
					<div class="col-xs-6">
						<ul class="footer-nav">
							<li><a href="/students/">Students</a></li>
							<li><a href="/faculty-and-staff/">Faculty &amp; Staff</a></li>
							<li><a href="/alumni-and-friends/">Alumni &amp; Friends</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<h4>T-shirt and Buttons</h4>
				<p>Show your school spirit and help celebrate Hawkeye Homecoming by buying your t-shirts and buttons now! All proceeds benefit Homecoming programming.</p>
				<a href="/merchandise" class="appt-btn">Order Now</a>
			</div>
		</div>
		<hr>
		<p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved.</p>
	</div>
</footer>