<div class="container">
  <div class="row">
    <div class="col-md-9">
      <h1>$Title</h1>

      <!-- for debug: -->
      <h2>Using Category: $Category.Title <h2>

      <% with $Category %>
        <ul>
        <% loop $CalendarEvents %>
          <li>$Title</li>
        <% end_loop %>
      </ul>
      <% end_with %>

      $Content
      $Form
    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->