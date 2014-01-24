
<div class="container">
  <div class="row">
    <div class="col-md-9">
      <% if $CurrentAction(show) %>

        <% if Events %>
          <div id="event-calendar-events">
            <% loop Events %>
             <% include EventList %>
            <% end_loop %>
          </div>
        <% end_if %>

      <% else %>

        <% if AllEvents %>
          <div id="event-calendar-events">
            <% loop AllEvents %>
             <% include EventList %>
            <% end_loop %>
          </div>
          <% else %>
            <p><% _t('NOEVENTS','There are no events') %>.</p>
        <% end_if %>

      <% end_if %>

    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
  </div><!-- end .row -->
</div><!-- end .container -->