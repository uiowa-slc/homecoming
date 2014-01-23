<div class="eventsbydate">
  <h5>Events by Date</h5>
  <ul class="unstyled">
    <% with $Page(schedule) %>
      <% loop AllDates %>
        <li><a href="schedule/show/{$StartDate.Format('Ymd')}">{$StartDate.Day}, {$StartDate.Month} {$StartDate.DayOfMonth}, {$StartDate.Year}</a></li>
      <% end_loop %>
    <% end_with %>
  </ul>
</div>
<br>