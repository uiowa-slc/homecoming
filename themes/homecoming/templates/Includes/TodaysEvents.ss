<section class="todays-events">
  <div class="container container-padding">
    <% with $Page(schedule) %>

      <% if $EventsToday %>
        <h3><span>Today's Events</span></h3>
        <ul>
        <% loop $EventsToday %>
          <li class="justify-item">
            <a href="$Link" class="event-img">
              <img src="{$Event.EventImage.SetWidth(320).URL}" alt="$Title">
            </a>
            <h4 class="todays-events-title"><a href="$Link">$Title</a></h4>
            <div class="today-content">
              <p><span class="time">$TimeRange</span><br>$Event.EventLocation</p>
              <!-- <p><a href="$Link">Learn More</a></p> -->
            </div>
          </li>
        <% end_loop %>
        </ul>

      <% else_if $UpcomingEvents %>
        <h3><span>Upcoming Events</span></h3>
        <ul class="justify">
        <% loop $UpcomingEvents.Limit(3) %>
          <li class="justify-item">
            <a href="$Link" class="event-img">
              <img src="{$Event.EventImage.URL}" alt="$Title">
            </a>
            <h4 class="todays-events-title"><a href="$Link">$Title</a></h4>
            <div class="today-content">
              <p>$DateRange<br><span class="time">$TimeRange</span><br>$Event.EventLocation</p>
              <!-- <p><a href="$Link">Learn More</a></p> -->
            </div>
          </li>
        <% end_loop %>
        </ul>

      <% else %>
        
      <% end_if %>

   <% end_with %>
  </div>
</section>