<div class="container">
  <div class="row">
    <div class="col-md-9">
    
      <!-- $CalendarWidget
      $MonthJumper -->

      <div class="vevent">
        <h1 class="summary">$Title</h1>
        <% if $EventImage %><img src="{$EventImage.SetWidth(825).URL}" alt="$Title" /><% end_if %>
        <% with CurrentDate %>
          <p class="dates">$DateRange</p>
          <% if StartTime %><p class="">$TimeRange</p><% end_if %>
        <% end_with %>
        <p>$EventLocation</p>
        

        $Content
      
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
    <div class="col-md-3">
      <% include EventsByDate %>
      <% include Announcements %>
    </div>
  </div><!-- end .row -->
</div><!-- end .container -->