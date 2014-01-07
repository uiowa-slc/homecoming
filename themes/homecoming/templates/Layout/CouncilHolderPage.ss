<div class="container">
  <div class="row">
    <div class="col-md-9">
      <h1>$Title</h1>
      $Content
      $Form
      <ul class="unstyled council-member">
      <% loop $allChildren %>
        <li class="clearfix">
            <img src="$CouncilPhoto.SetWidth(150).URL" alt="$Title">
          <h4 class="council-title">
            $Title, <% if $Position %>$Position<% end_if %>
          </h4>
          <p class="council-email">$Phone, <a href="mailto:$EmailAddress">$EmailAddress</a></p>
          <div class="council-bio">$Content</div>
        </li>
      <% end_loop %>
      </ul>
    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->