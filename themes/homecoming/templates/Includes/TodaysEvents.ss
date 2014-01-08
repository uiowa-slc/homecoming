<section class="todays-events">
  <div class="container container-padding">
    <% with $Page(schedule) %>

      <% if $EventsToday %>
        <h3>Today's Events</h3>
        <ul class="unstyled clearfix $Pos">
        <% loop $EventsToday %>
          <li>
            <h4>$Title</h4>
            <a href="$Link" class="event-img">
              <img src="{$EventImage.SetWidth(300).URL}" alt="$Title">
            </a>
            <p>$TimeRange<br>$EventLocation</p>
            <p><a href="$Link">Learn More</a></p>
          </li>
        <% end_loop %>
        </ul>

      <% else_if $UpcomingEvents %>
        <h3>Events Later</h3>
        <ul class="unstyled clearfix $Pos">
        <% loop $UpcomingEvents.Limit(3) %>
          <li>
            <h4>$Title</h4>
            <a href="$Link" class="event-img">
              <img src="{$EventImage.SetWidth(300).URL}" alt="$Title">
            </a>
            <p>$TimeRange<br>$EventLocation</p>
            <p><a href="$Link">Learn More</a></p>
          </li>
        <% end_loop %>
        </ul>

      <% else %>
        <h3>No Events</h3>
      <% end_if %>

   <% end_with %>
  </div>
</section>