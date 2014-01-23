<section class="todays-events">
  <div class="container container-padding">
    <% with $Page(schedule) %>

      <% if $EventsToday %>
        <h3>Today's Events</h3>
        <ul class="unstyled clearfix $Pos">
        <% loop $EventsToday %>
          <li>
            <a href="$Link" class="event-img">
              <img src="{$Event.EventImage.SetWidth(300).URL}" alt="$Title">
            </a>
            <h4>$Title</h4>
            <p>$TimeRange<br>$Event.EventLocation</p>
            <p><a href="$Link">Learn More</a></p>
          </li>
        <% end_loop %>
        </ul>

      <% else_if $UpcomingEvents %>
        <h3>Upcoming Events</h3>
        <ul class="unstyled clearfix $Pos">
        <% loop $UpcomingEvents.Limit(3) %>
          <li>
            <a href="$Link" class="event-img">
              <img src="{$Event.EventImage.SetWidth(300).URL}" alt="$Title">
            </a>
            <h4>$Title</h4>
            <p>$DateRange<br>$TimeRange<br>$Event.EventLocation</p>
            <p><a href="$Link">Learn More</a></p>
          </li>
        <% end_loop %>
        </ul>

      <% else %>
        
      <% end_if %>

   <% end_with %>
  </div>
</section>