<div class="container">
  <div class="row">
    <div class="col-md-9">
      <h1>$Title</h1>
      <img src="$CommitteePhoto.URL" alt="$Name">
      <h2>$Position</h2>
      <ul>
        <li>Email: <a href="mailto:$EmailAddress">$EmailAddress</a></li>
        <li>Phone: $Phone</li>
      </ul>
      $Content
      $Form
    </div><!-- end .col -->
    <div class="col-md-3">
      <% include SideNav %>
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->