<div class="container clearfix">
  <section class="staff-content">
  	$Form
  	$Content
    <% with $Page(homecoming-council) %>
    <ul class="unstyled">
    <% loop Children %>
      <li>
        <% if $Photo %>
        <a href="$Link" class="staff-link">
          <img src="$Photo.CroppedImage(350,234).URL" alt="$Name">
        </a>
        <% else %>
        <a href="$Link" >
          <img src="division-project/images/dosl.png" alt="$Name">
        </a>
        <% end_if %>
        <p>
          <a href="$Link">$Name</a>
          <% if $Position %><small>$Position</small><% end_if %>
        </p>
      </li>
    <% end_loop %>
    </ul>
  	<% end_with %>
  </section>
</div>
