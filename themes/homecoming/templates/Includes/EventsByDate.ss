<div class="eventsbydate">
  <h5 class="title">Events by Date</h5>
  <ul class="unstyled">
    <% with $Page(schedule) %>
      <% loop AllDates %>
        <li><span class="glyphicon glyphicon-chevron-right"></span><a href="schedule/show/{$StartDate.Format('Ymd')}">{$StartDate.Day}, {$StartDate.Month} {$StartDate.DayOfMonth}, {$StartDate.Year}</a></li>
      <% end_loop %>
    <% end_with %>
  </ul>
</div>