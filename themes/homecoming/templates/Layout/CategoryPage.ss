<div class="container">
  <div class="row">
    <div class="col-md-9">
      <h1>$Title</h1>
      $Content
      $Form
      <!-- for debug:
      <h2>Using Category: $Category.Title </h2> -->

      <% with $Category %>

        <% loop $CalendarEvents %>
          <div class="event-wrap clearfix">
            <h2 class="event-title"><a href="$Link">$Title</a></h2>
            <% if $EventImage %>
              <a href="$Link" class="event-img"><img src="{$EventImage.SetWidth(300).URL}" alt="$Title"></a>
            <% end_if %>
            <dl class="event-meta">
              <dt>Date:</dt>
              <dd>$DateRange</dd>
              <dt>Time:</dt>
              <dd><% if AllDay %><% _t('ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></dd>
              <dt>Location:</dt>
              <dd>$EventLocation</dd>
            </dl>
            <p class="event-desc">
              $Content.LimitCharacters(220) <a href="$Link"><% _t('MORE','Read more&hellip;') %></a>
            </p>
          </div>
          <hr>
        <% end_loop %>

      <% end_with %>

    </div><!-- end .col -->
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->