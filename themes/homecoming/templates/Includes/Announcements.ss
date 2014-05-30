<% with $Page(announcements) %>
	<% if Children %>
	<div class="announcements">
	  <h3 class="title">Announcements</h3>
	  <ul class="unstyled">
	    <% loop Children %>
	      <li><span class="glyphicon glyphicon-chevron-right"></span><a href="$Link">$Title</a>
	        <!-- <small>$Created.NiceUS</small> -->
	      </li>
	    <% end_loop %>
	  </ul>
	</div>
	<% end_if %>
<% end_with %>
