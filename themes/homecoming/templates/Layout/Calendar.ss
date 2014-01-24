
<div class="container">
  <div class="row">
    <div class="col-md-9">
      <!-- <h2>$DateHeader</h2> -->
      <% if AllEvents %>
      <div id="event-calendar-events">
        <% include EventList %>
      </div>
      <% else %>
        <p><% _t('NOEVENTS','There are no events') %>.</p>
      <% end_if %>

    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
  </div><!-- end .row -->
</div><!-- end .container -->