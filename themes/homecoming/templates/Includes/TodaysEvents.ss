
    <% with $Page(schedule) %>

      <% if $EventsToday %>
      <section class="todays-events">
        <div class="container container-padding">
          <h3><span>Today's Events</span></h3>
          <ul>
          <% loop $EventsToday %>
            <li class="justify-item">
              <a href="$Link" class="event-img">
                <img src="{$Event.EventImage.SetHeight(250).URL}" alt="$Title">
              </a>
              <h4 class="todays-events-title"><a href="$Link">$Title</a></h4>
              <div class="today-content">
                <p><span class="time">$TimeRange</span><br>$Event.EventLocation</p>
                <!-- <p><a href="$Link">Learn More</a></p> -->
              </div>
            </li>
          <% end_loop %>
          </ul>
        </div>
      </section>

      <% else_if $UpcomingEvents %>
        <section class="todays-events">
          <div class="container container-padding">
            <h3><span>Upcoming Events</span></h3>
            <ul class="justify justify-4">
            <% loop $UpcomingEvents.Limit(4) %>
              <li class="justify-item">
                <a href="$Link" class="event-img">
                  <img src="{$Event.EventImage.CroppedImage(400,300).URL}" alt="$Title">
                </a>
                <h4 class="todays-events-title"><a href="$Link">$Title</a></h4>
                <div class="today-content">
                  <p>$DateRange<br><span class="time">$TimeRange</span><br>$Event.EventLocation</p>
                  <!-- <p><a href="$Link">Learn More</a></p> -->
                </div>
              </li>
            <% end_loop %>
            </ul>
          </div>
        </section>
      <% else %>

      <% end_if %>

   <% end_with %>
