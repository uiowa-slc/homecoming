<div class="eventsbydate">
  <h3 class="title">Events by Date</h3>
  <ul class="unstyled">
    <% with $Page(schedule) %>
      <% loop AllDates %>
      	<% if Event %>
        <li><span class="glyphicon glyphicon-chevron-right"></span><a href="schedule/show/{$StartDate.Format('Ymd')}">{$StartDate.Day}, {$StartDate.Month} {$StartDate.DayOfMonth}</a></li>
        <% end_if %>
      <% end_loop %>
    <% end_with %>
  </ul>
</div>