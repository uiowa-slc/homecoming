      <% with $Page(schedule) %>

        <% if $EventsToday %>
          <h3>Events Today</h3>
          <% loop $EventsToday %>
            <li>$Title</li>
          <% end_loop %>

        <% else_if $UpcomingEvents %>
          <h3>Events Later</h3>
          <% loop $UpcomingEvents.Limit(3) %>
            <li>$Title</li>
          <% end_loop %>

        <% else %>
          <h3>No Events</h3>
        <% end_if %>

     <% end_with %>


<h3>Today's Events</h3>
<ul class="unstyled clearfix">
<li>
    <h4>Event Name Goes Here</h4>
    <a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
    <p>10:00 am - 5:00 pm<br>
    2nd Floor Ballroom, IMU</p>
    <p><a href="#">Learn More</a></p>
</li>
<li>
    <h4>Event Name Goes Here</h4>
    <a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
    <p>8:00 pm<br>
    Field House Swimming Pool</p>
    <p><a href="#">Learn More</a></p>
</li>
<li>
    <h4>Event Name Goes Here</h4>
    <a href="#"><img src="http://placehold.it/300x180&text=+" alt=""></a>
    <p>8:00 pm<br>
    Field House Swimming Pool</p>
    <p><a href="#">Learn More</a></p>
</li>
</ul>