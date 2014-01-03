<% loop Events %>
<div class="event-wrap clearfix">
  <h2 class="event-title"><a href="$Event.Link">$Event.Title</a></h2>
  <% if $Event.EventImage %>
    <a href="$Event.Link" class="event-img"><img src="{$Event.EventImage.SetWidth(300).URL}" alt="$Event.Title"></a>
  <% end_if %>
  <dl class="event-meta">
    <dt>Date:</dt>
    <dd>$DateRange</dd>
    <dt>Time:</dt>
    <dd><% if AllDay %><% _t('ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></dd>
    <dt>Location:</dt>
    <dd>$Event.EventLocation</dd>
  </dl>
  <p class="event-desc">
    <% with Event %>$Content.LimitCharacters(220)<% end_with %> <a href="$Event.Link"><% _t('MORE','Read more&hellip;') %></a>
  </p>
</div>
<hr>
<% end_loop %>

<% if MoreEvents %>
  <a href="$MoreLink" class="calendar-view-more"><% _t('Calendar.VIEWMOREEVENTS','View more events...') %></a>
<% end_if %>



