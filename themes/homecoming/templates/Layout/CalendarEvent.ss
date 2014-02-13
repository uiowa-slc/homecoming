<div class="container">
  <div class="row">
    <div class="col-md-8">

      <!-- $CalendarWidget
      $MonthJumper -->

      <div class="vevent">
        <!-- <div style="margin-bottom: 2em;">
          <h1 class="summary" style="font-size: 36px;">$Title</h1>
        </div> -->
        <% if $EventImage %>
          <div style="margin-bottom: 10px;max-height: 500px;overflow:hidden;">
            <img src="{$EventImage.SetWidth(800).URL}" alt="$Title"  />
          </div>
        <% end_if %>
        <div class="row">
          <div class="col-sm-12">
            <h1 class="summary" style="font-size: 36px;">$Title</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <% with CurrentDate %>
              <p class="dates">$DateRange</p>
              <% if StartTime %><p class="">$TimeRange</p><% end_if %>
            <% end_with %>
            <p>$EventLocation</p>
          </div>
          <div class="col-sm-8">
            <div>
              $Content
            </div>
          </div>
        </div>


        <% if OtherDates %>
        <div class="event-calendar-other-dates">
          <h4><% _t('CalendarEvent.ADDITIONALDATES','Additional Dates for this Event') %></h4>
          <ul>
            <% loop OtherDates %>
            <li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
            <% end_loop %>
          </ul>
        </div>
        <% end_if %>

      </div>
      $Form
      $PageComments
    </div><!-- end .col -->
    <div class="col-md-4">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->